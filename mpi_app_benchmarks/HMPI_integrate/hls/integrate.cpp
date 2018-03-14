/*
 * This program calculates a one-variable definite integral over the bounds and accuracy specified by the user.
 * You can change the equation to be integrated by modifying the f(x) macro below.
 *
 * Parameters:
 *      N_INT   -   Number of times the entire integral will be computed. This repetition is just to artificially   
 *                  extend the execution time as one iteration (computing one integral) is very fast
 *      a,b     -   Integral limits
 *      n       -   Number of intervals per integral
 *
 */

#define MPI_SIZE 2
#define MODULE_RANK 0


#include "MPI.h"
#include <stdio.h>
#include <math.h>
#include "common.h"

// ENTER THE EQUATION IN THIS MACRO
//#define f(x)  ( 4 / ( 1 + ((x)*(x)) ) )
//#define f(x) (5*(x*x)-100*x+23)
#define f(x) (0.05*((x)*(x)*(x))-3*(x*x)-23*x)

#define N_INT 1000

//clock_t start_time,end_time;

// Trapezoid rule
float 
Trap(float a, float b, int n, float h)
{ 
    float integral, x;
    int i; 
    integral = (f(a) + f(b))/2.0; 
    x = a; 
    for (i = 1; i <= n-1; i++) 
    { 
        x += h; 
        integral += f(x); 
    } 
    return integral * h;
}

int integrate() 
{
#pragma HLS resource core=AXI4Stream variable=stream_out
#pragma HLS resource core=AXI4Stream variable=stream_in
#pragma HLS DATA_PACK variable  = stream_out
#pragma HLS DATA_PACK variable  = stream_in

    int me, nproc, n, local_n, i, r, q;
    int root = 0;
    float h, a, b, local_a, local_b;
    float integral[N_INT], total[N_INT]; 
    double t;

//    PRINT("Starting MPI...\r\n");
    MPI_Init ();
    // MPI_Comm_size ( MPI_COMM_WORLD, &nproc);
    // MPI_Comm_rank ( MPI_COMM_WORLD, &me );

    nproc = MPI_SIZE;
    me = MODULE_RANK;

    // #ifdef VERBOSE
    // PRINT("------------ R%d ----------------\r\n",me);
    // PRINT("Here we go!\r\n"); 
    // #endif

//    start_time = clock();
    if ( me == 0 )
    {
        a = 0;
        b = 100;
        n = 2000;
    }

    for(i=0; i<N_INT; i++)
    {
        //MPI_Bcast(&a, 1, MPI_FLOAT, root, MPI_COMM_WORLD);
        float a_array[1] = {a};
        if(me == 0){
            for(r = 1; r < nproc ;r++)
                MPI_Send(a_array,1, MPI_FLOAT,r,0,MPI_COMM_WORLD);
        }
        else{
            MPI_Recv(a_array,1, MPI_FLOAT,0,0,MPI_COMM_WORLD);
            a = a_array[0];
        }

        //MPI_Bcast(&b, 1, MPI_FLOAT, root, MPI_COMM_WORLD);
        float b_array[1] = {b};
        if(me == 0){
            for(r = 1; r < nproc ;r++)
                MPI_Send(b_array,1, MPI_FLOAT,r,0,MPI_COMM_WORLD);
        }
        else{
            MPI_Recv(b_array,1, MPI_FLOAT,0,0,MPI_COMM_WORLD);
            b = b_array[0];
        }

        //MPI_Bcast(&n, 1, MPI_INT, root, MPI_COMM_WORLD);
        int n_array[1] = {n};
        if(me == 0){
            for(r = 1; r < nproc ;r++)
                MPI_Send(n_array,1, MPI_INT,r,0,MPI_COMM_WORLD);
        }
        else{
            MPI_Recv(n_array,1, MPI_INT,0,0,MPI_COMM_WORLD);
            n = n_array[0];
        }

        h = (b-a)/n;
        local_n = n/nproc;  
        local_a = a + me*local_n*h;
        local_b = local_a + local_n*h;
        integral[i] = Trap(local_a, local_b, local_n, h);
    }

    //MPI_Reduce(integral, total, N_INT, MPI_FLOAT, MPI_SUM, root, MPI_COMM_WORLD);
    if(me == 0){
        for(r = 0 ; r < N_INT ;r++){
            total[r] = integral[r];
        }

        for(r = 1; r < nproc ;r++){
            MPI_Recv(integral, N_INT, MPI_FLOAT,r,0,MPI_COMM_WORLD);

            for(q = 0; q < N_INT; q++){
                total[q] += integral[q];
            }
        }
    }
    else{
        MPI_Send(integral, N_INT, MPI_FLOAT,0,0,MPI_COMM_WORLD);
    }


//    end_time = clock();

//    PRINT("Execution Time = %f\r\n", (double)(end_time - start_time) / CLOCKS_PER_SEC);

    // #ifdef VERBOSE
    // if (me == 0)
    // {
    //     printf("With n = %d trapezoids, our estimates are:\n", n);

    //     for(i=0; i<N_INT; i++)
    //     {
    //         printf("%d: [%f:%f] = %f\n", i, a, b, total[i]); 
    //     }
    // }
    // #endif
    // PRINT("Execution Time = %f\r\n", (double)(end_time - start_time) / CLOCKS_PER_SEC);

    MPI_Finalize();
    return 0;
}
