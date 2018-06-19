

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
 

    MPI_Init();

    int max_itr = 10;

    int data_size = 1;

    float temp[1000000] = {1};
    float temp2[1000000] = {1};
    for(int i = 0 ; i < 1000000 ;i++)
        temp[i] = (float)i;
    unsigned char * temp_char_ptr = (unsigned char *)temp;

    MPI_COMM comm;

    for(int i = 0 ; i< max_itr ; i++){
        cout << i <<endl;
        start_time = get_wall_time();
        MPI_Send(temp,data_size,MPI_FLOAT,1,1,comm);
        end_time = get_wall_time();

        printf("send time: %f \n", end_time - start_time);

        // MPI_Recv(temp2,data_size,MPI_FLOAT,1,1,comm);


        MPI_Recv(temp2,data_size,MPI_FLOAT,3,3,comm);
        // MPI_Send(temp,data_size,MPI_FLOAT,2,2,comm);
        // MPI_Recv(temp2,data_size,MPI_FLOAT,2,2,comm);

        for(int i = 0 ; i < data_size ;i++){

            if(temp2[i] != i){
                cout <<i<<" ERROR received:" <<temp2[i] <<endl;
                break;
            }
        }


    }

    MPI_Finalize();

    return 0;
}




