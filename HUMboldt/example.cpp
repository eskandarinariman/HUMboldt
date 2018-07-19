/*
 * This program computes the Jacobi iterations to approximate the solution to a linear system of equations.
 * The code is a modification from the exercise described in the following site where further information can 
 * be found about the algorithm
 *
 * http://www.mcs.anl.gov/research/projects/mpi/tutorial/mpiexmpl/src/jacobi/C/main.html
 *
 * 
 */

#include "stdio.h"
#include "stdlib.h"
#include "math.h"
#include "./CPP_lib/HUM_lib/HUMboldt.h"
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
    HUM_MPI_Init(&argc,&argv);

    HUM_MPI_COMM comm;

    float temp[2];
    temp[0] = 1;
    temp[1] = 1;

    HUM_MPI_Send(temp,2,HUM_MPI_FLOAT,1,0,comm);
    HUM_MPI_Send(temp,2,HUM_MPI_FLOAT,1,0,comm);
    
    start_time = get_wall_time();

    HUM_MPI_Recv(temp,2,HUM_MPI_FLOAT,1,0,comm);

    end_time = get_wall_time();

    cout << "time : " << (end_time - start_time)/1000000 <<endl;

    HUM_MPI_Finalize();

    return 0;
}
