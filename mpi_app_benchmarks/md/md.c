/*
 * Program to compute Molecular Dynamics and determine the potential energy of a collection 
 * of atoms as a function of the physical properties and positions of all atoms in the simulation.
 * The net force acting on each atom is determined by calculating the negative gradient
 * of the potential energy with respect to its position. With the knowledge of both the
 * position and the net force acting on every atom in the system, Newton’s equations of
 * motion are solved numerically to predict the movement of every atom. This step is
 * repeated over small time increments (10^−15 sec.) to yield a time trajectory of the
 * molecular system.
 *
 * The total potential energy of the system results from van der Waals forces, which
 * are modeled by the Lennard-Jones 6-12 equation
 */

#include <math.h>
#include <mpi.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "common.h"


// Define MD simulation parameters
#define ATOMCOUNT 72
#define STEPCOUNT 20
#define CUBELENGTH 25
#define INVMASS 0.5
#define DT 0.02
#define BOLTZMAN 0.001987191

int rank;
int processorCount;

//------------------------------
// Actual MD calculation
void
doMD(int atomCount, int stepCount)
{
    int i, j;
    int stepIndex = 0;
    float *forceSum = NULL;
    float *vel = NULL;

    float *pos = (float*) malloc(atomCount * 3 * sizeof(float));
    if (pos == NULL)
    {
        PRINT("Cannot allocate memory for atoms\n");
        return;
    }
    float *force = (float*) malloc(atomCount * 3 * sizeof(float));
    if (force == NULL)
    {
        PRINT("Cannot allocate memory for forces\n");
        free (pos);
        return;
    }
    
    if (!rank)
    {
        forceSum = (float*) malloc(atomCount * 3 * sizeof(float));
        if (forceSum == NULL)
        {
            PRINT("Cannot allocate memory for force summation buffer\n");
            free(pos);
            free(force);
            return;
        }

        vel = (float*) malloc(atomCount * 3 * sizeof(float));
        if (vel == NULL)
        {
            PRINT("Cannot allocate memory for velocity buffer\n");
            free(forceSum);
            free(pos);
            free(force);
            return;
        }

        float boltzmanTemp = 298. * BOLTZMAN;
        float tempOverMass = sqrt(boltzmanTemp / 40.0);


        for (i=0; i != atomCount; ++i)
        {
            pos[i * 3] = (float)rand() / (float)RAND_MAX * CUBELENGTH;
            pos[i * 3 + 1] = (float)rand() / (float)RAND_MAX * CUBELENGTH;
            pos[i * 3 + 2] = (float)rand() / (float)RAND_MAX * CUBELENGTH;

            double rnd = (double)rand() / (double)RAND_MAX;

            rnd *= 12.;
            rnd -= 6.;
            vel[i * 3] = (rnd * tempOverMass); // 1000;

            rnd = (double)rand() / (double)RAND_MAX;
            rnd *= 12.;
            rnd -= 6.;
            vel[i * 3 + 1] = (rnd * tempOverMass); // 1000;

            rnd = (double)rand() / (double)RAND_MAX;
            rnd *= 12.;
            rnd -= 6.;
            vel[i * 3 + 2] = (rnd * tempOverMass); // 1000;
            
            #ifdef VERBOSE
            PRINT("%3d) V: %8.3f %8.3f %8.3f\n", i, vel[i * 3], vel[i * 3 + 1], vel[i * 3 + 2]);
            #endif
        }
    
        #ifdef VERBOSE
        for (i=0; i != atomCount; ++i)
        {
            PRINT("%8.3f %8.3f %8.3f\n", pos[i * 3], pos[i * 3 + 1], pos[i * 3 + 2]);
        }
        #endif
    }

    int localAtomCount = atomCount / processorCount;
    float vdw = 0.5;
    while (stepIndex++ < stepCount)
    {
        // Distribute atoms using broadcast.
        MPI_Bcast(pos, atomCount * 3, MPI_FLOAT, 0, MPI_COMM_WORLD);
        memset(force, 0, sizeof(float) * 3 * atomCount);
        for (i = rank * localAtomCount; i != rank * localAtomCount + localAtomCount; ++i)
        {
            for (j = 0; j != atomCount; ++j)
            {
                // Don't do self-self calculations.
                if (i == j) continue;
                // Primitive load balancing.
                if ((i < j) && (j & 0x01)) continue;
                if ((i > j) &! (i & 0x01)) continue;
                // Calc distance.
                float dx = pos[i * 3] - pos[j * 3];
                dx = dx - rint(dx/CUBELENGTH) * CUBELENGTH;
                float dy = pos[i * 3 + 1] - pos[j * 3 + 1];
                dy = dy - rint(dy/CUBELENGTH) * CUBELENGTH;
                float dz = pos[i * 3 + 2] - pos[j * 3 + 2];
                dz = dz - rint(dz/CUBELENGTH) * CUBELENGTH;
                float r2inv = 1.0 / (dx*dx + dy*dy + dz*dz);
                float r6inv = r2inv * r2inv * r2inv;
                float r12inv = r6inv * r6inv;
                float pe = (vdw * r12inv) - (vdw * r6inv);
                float gr = ((12 * vdw * r2inv * r12inv) - 6 * vdw * r2inv * r6inv);
                // Force
                float fx = gr * dx;
                float fy = gr * dy;
                float fz = gr * dz;
                // Sum forces.
                force[i * 3] += fx;
                force[i * 3 + 1] += fy;
                force[i * 3 + 2] += fz;
                force[j * 3] -= fx;
                force[j * 3 + 1] -= fy;
                force[j * 3 + 2] -= fz;
            }
        }

        // Reduce forces on root.
        MPI_Reduce(force, forceSum, atomCount * 3, MPI_FLOAT, MPI_SUM, 0, MPI_COMM_WORLD);

        // Integrate.
        if (!rank)
        {
            // Add force to velocity and velocity to position.
            for (i = rank * localAtomCount; i != rank * localAtomCount + localAtomCount; ++i)
            {
                vel[i * 3] += forceSum[i * 3] * DT * INVMASS;
                pos[i * 3] += fmod(vel[i * 3] * DT, CUBELENGTH);
                vel[i * 3 + 1] += forceSum[i * 3 + 1] * DT * INVMASS;
                pos[i * 3 + 1] += fmod(vel[i * 3 + 1] * DT, CUBELENGTH);
                vel[i * 3 + 2] += forceSum[i * 3 + 2] * DT * INVMASS;
                pos[i * 3 + 2] += fmod(vel[i * 3 + 2] * DT, CUBELENGTH);
            }
        }
    }

    MPI_Barrier(MPI_COMM_WORLD);

    free(pos);
    free(force);
    
    if (!rank)
    {
        free(forceSum);
    }
}


//------------------------------
int 
main(int argc, char* argv[])
{
    PRINT( "%c[2J%c[H", 27, 27);
    PRINT("File: %s\r\n",__FILE__);
    PRINT("Compiled %s %s\r\n",__DATE__,__TIME__);
    

    // Setup network.
    MPI_Init(&argc, &argv);
    MPI_Comm_size(MPI_COMM_WORLD, &processorCount);
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);

    PRINT("PROC:%d, ATOMS:%d, STEPS:%d\r\n", processorCount, ATOMCOUNT, STEPCOUNT);

    //srand((unsigned)time(0));
    int atomCount = ATOMCOUNT;
    int stepCount = STEPCOUNT;


    if (atomCount % processorCount)
    {
        if (!rank)
            PRINT("Error. Atom count must be a multiple of processor count\n");
    }
    else
    {
        double start_time = 0.0, end_time=0.0;
        start_time = TIME_STAMP();
        doMD(atomCount, stepCount);
        end_time = TIME_STAMP();

        if (rank == 0)
            PRINT( "Time: %f\r\n", ((float)(end_time-start_time)));
    }


    PRINT("Rank %d done\n", rank);
    MPI_Finalize();

    return 0;
}
