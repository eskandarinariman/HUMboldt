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
        //  Handle error
        return 0;
    }
    return (double)time.tv_sec*1000000000 + (double)time.tv_usec;
}

double start_time,end_time;

int main(int argc, char** argv)
{
    int         rank, size, i, j, itcnt, q;
    float       diffnorm, gdiffnorm;
    float       **xlocal, **xnew;
    int         nrows;
    MPI_Status  status;
    double      t0, t1;
    long long time = 0;

    HUM_Init( &argc, &argv );


    MPI_Comm_rank( MPI_COMM_WORLD, &rank );
    MPI_Comm_size( MPI_COMM_WORLD, &size );

    int max_itr = 10000;

    int data_size = atoi(argv[1]);

    float temp[1000000] = {1};
    float temp2[1000000] = {1};
    for(int i = 0 ; i < 1000000 ;i++)
        temp[i] = (float)i;

    struct timespec tps, tpe;

    //ETH_MPI_Send(temp,data_size,HUM_MPI_FLOAT,1,0,HUM_MPI_COMM_WORLD);
    if(rank == 0)
        HUM_MPI_Send(temp,data_size,HUM_MPI_FLOAT,1,0,HUM_MPI_COMM_WORLD);

    

    // for(int i = 0 ; i < max_itr ; i++){
    //     //printf("%d\n",i);
    //     if(rank == 0){
    //         clock_gettime(CLOCK_REALTIME, &tps);
    //         MPI_Send(temp,data_size,MPI_FLOAT,1,0,MPI_COMM_WORLD);
    //         clock_gettime(CLOCK_REALTIME, &tpe);
    //         //printf("t: %lu", (tpe.tv_sec-tps.tv_sec)*1000000+(tpe.tv_nsec-tps.tv_nsec)/1000);
    //         time+= (tpe.tv_sec-tps.tv_sec)*1000000000+(tpe.tv_nsec-tps.tv_nsec);


    //     } else{
    //         MPI_Recv(temp2,data_size,MPI_FLOAT,0,0,MPI_COMM_WORLD,MPI_STATUS_IGNORE);
    //     }
    // }

    // printf("%f\n",((double)time/max_itr)/1000);


    // MPI_Finalize( );

    while(1);

    return 0;
}

