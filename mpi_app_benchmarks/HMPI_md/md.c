#define MODULE_RANK 0
#define MPI_SIZE 1

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
#include "MPI.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include "common.h"



// Define MD simulation parameters
#define ATOMCOUNT 72
#define STEPCOUNT 20
#define CUBELENGTH 25
#define INVMASS 0.5
#define DT 0.02
#define BOLTZMAN 0.001987191
#define RAND_MAX 2048

int world_rank = MODULE_RANK;
int processorCount = MPI_SIZE;

clock_t start_time,end_time;


static int rnd_seed = 1;

int rand()
{
    int k1;
    int ix = rnd_seed;
    
    k1 = ix / 127773;
    ix = 16807 * (ix - k1 * 127773) - k1 * 2836;
    if (ix < 0)
        ix += 2147483647;
    rnd_seed = ix;
    return rnd_seed;
}


//------------------------------
// Actual MD calculation
void
doMD(int atomCount, int stepCount)
{
    int i, j;
    int stepIndex = 0;
    //float *forceSum = NULL;
    //float *vel = NULL;

    //float *pos = (float*) malloc(atomCount * 3 * sizeof(float));
    float pos[atomCount * 3 ];

    //float *force = (float*) malloc(atomCount * 3 * sizeof(float));
    float force[atomCount * 3 ];

    //forceSum = (float*) malloc(atomCount * 3 * sizeof(float));
    float forceSum[atomCount * 3 ];

    //vel = (float*) malloc(atomCount * 3 * sizeof(float));
    float vel[atomCount * 3 ];


    if (!world_rank)
    {

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
        //MPI_Bcast(pos, atomCount * 3, MPI_FLOAT, 0, MPI_COMM_WORLD);
        if(world_rank == 0){
            for(i = 1; i < processorCount ;i++)
                MPI_Send(pos,atomCount * 3, MPI_FLOAT,i,i,MPI_COMM_WORLD);
        }
        else{
            MPI_Recv(pos, atomCount * 3, MPI_FLOAT,0,i,MPI_COMM_WORLD);
        }

        
        //memset(force, 0, sizeof(float) * 3 * atomCount);
        for(i = 0; i < 3 * atomCount ;i++){
            force[i] = 0;
        }

        for (i = world_rank * localAtomCount; i != world_rank * localAtomCount + localAtomCount; ++i)
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
        //MPI_Reduce(force, forceSum, atomCount * 3, MPI_FLOAT, MPI_SUM, 0, MPI_COMM_WORLD);
        for(i = 0 ; i < atomCount*3 ;i++){
            forceSum[i] = 0;
        }
        if(world_rank == 0){
            for(i = 1; i < processorCount ;i++){
                MPI_Recv(pos, atomCount * 3, MPI_FLOAT,i,0,MPI_COMM_WORLD);
            }

            for(i = 0; i < atomCount * 3; i++){
                forceSum[i] += force[i];
            }
        }
        else{
            MPI_Send(pos, atomCount * 3, MPI_FLOAT,0,0,MPI_COMM_WORLD);
        }

        // Integrate.
        if (!world_rank)
        {
            // Add force to velocity and velocity to position.
            for (i = world_rank * localAtomCount; i != world_rank * localAtomCount + localAtomCount; ++i)
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

    //MPI_Barrier(MPI_COMM_WORLD);

    // free(pos);
    // free(force);
    
    // if (!world_rank)
    // {
    //     free(forceSum);
    // }
}


//------------------------------
int 
main(int argc, char* argv[])
{
    PRINT( "%c[2J%c[H", 27, 27);
    PRINT("File: %s\r\n",__FILE__);
    PRINT("Compiled %s %s\r\n",__DATE__,__TIME__);
    

    // Setup network.
    MPI_Init();
    // MPI_Comm_size(MPI_COMM_WORLD, &processorCount);
    // MPI_Comm_rank(MPI_COMM_WORLD, &world_ra);

    PRINT("PROC:%d, ATOMS:%d, STEPS:%d\r\n", processorCount, ATOMCOUNT, STEPCOUNT);

    //srand((unsigned)time(0));
    int atomCount = ATOMCOUNT;
    int stepCount = STEPCOUNT;


    if (atomCount % processorCount)
    {
        if (!world_rank)
            PRINT("Error. Atom count must be a multiple of processor count\n");
    }
    else
    {
        start_time = clock();
        doMD(atomCount, stepCount);
        end_time = clock();

        if (world_rank == 0)
            PRINT( "Time: %f\r\n", (double)(end_time - start_time) / CLOCKS_PER_SEC);
    }


    PRINT("Rank %d done\n", world_rank);
    MPI_Finalize();

    return 0;
}




