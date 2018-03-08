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

#include "mpi.h"
#include <stdio.h>
#include <math.h>
#include "common.h"

// ENTER THE EQUATION IN THIS MACRO
//#define f(x)  ( 4 / ( 1 + ((x)*(x)) ) )
//#define f(x) (5*(x*x)-100*x+23)
#define f(x) (0.05*((x)*(x)*(x))-3*(x*x)-23*x)

#define N_INT 600

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

int 
main(int argc, char** argv) 
{
    int me, nproc, n, local_n, i;
    int root = 0;
    float h, a, b, local_a, local_b;
    float integral[N_INT], total[N_INT]; 
    double t;

    PRINT("Starting MPI...\r\n");
    MPI_Init ( &argc, &argv );
    MPI_Comm_size ( MPI_COMM_WORLD, &nproc);
    MPI_Comm_rank ( MPI_COMM_WORLD, &me );

    #ifdef VERBOSE
    PRINT("------------ R%d ----------------\r\n",me);
    PRINT("Here we go!\r\n"); 
    #endif

    t = TIME_STAMP();
    if ( me == root )
    {
        a = 0;
        b = 100;
        n = 2000;
    }

    for(i=0; i<N_INT; i++)
    {
        MPI_Bcast(&a, 1, MPI_FLOAT, root, MPI_COMM_WORLD);
        MPI_Bcast(&b, 1, MPI_FLOAT, root, MPI_COMM_WORLD);
        MPI_Bcast(&n, 1, MPI_INT, root, MPI_COMM_WORLD);

        h = (b-a)/n;
        local_n = n/nproc;  
        local_a = a + me*local_n*h;
        local_b = local_a + local_n*h;
        integral[i] = Trap(local_a, local_b, local_n, h);
    }

    MPI_Barrier(MPI_COMM_WORLD);
    MPI_Reduce(integral, total, N_INT, MPI_FLOAT, MPI_SUM, root, MPI_COMM_WORLD);
    t = TIME_STAMP() - t;

    PRINT("Execution Time = %f\r\n", t);

    #ifdef VERBOSE
    if (me == 0)
    {
        printf("With n = %d trapezoids, our estimates are:\n", n);

        for(i=0; i<N_INT; i++)
        {
            printf("%d: [%f:%f] = %f\n", i, a, b, total[i]); 
        }
    }
    #endif

    MPI_Finalize();
    return 0;
}
