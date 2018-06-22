

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
#include "../CPP_lib/MPI_lib/MPI.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include "common.h"
#include <time.h>
#include <sys/time.h>
double get_wall_time(){
    struct timeval time;
    if (gettimeofday(&time,NULL)){
        cout << "time error" <<endl;
        return 0;
    }
    return (double)time.tv_sec * 1000000 + (double)time.tv_usec;
}

double start_time,end_time;

//------------------------------
int 
main(int argc, char* argv[])
{
 
    // change the RANK define in MPI.h to 5
    MPI_Init();

    unsigned char * temp_char_ptr = (unsigned char *)temp;

    MPI_COMM comm;

    float temp[1];
    temp[0] = 1;

    MPI_Send(temp,1,MPI_FLOAT,0,0,comm);

    start_time = get_wall_time();

    MPI_Recv(temp,1,MPI_FLOAT,0,0,comm);

    end_time = get_wall_time();

    cout << "time : " << end_time - start_time <<endl;

    MPI_Finalize();

    return 0;
}




