/* 
 * This program is based on the k-means algorithm presented by
 *
 *  D HILLON, I. S. AND M ODHA , D. S. 2000. 
 *  A data-clustering algorithm on distributed memory multiprocessors. 
 *  In Revised Papers from Large-Scale Parallel Data Mining, Workshop on 
 *  Large-Scale Parallel KDD Systems, SIGKDD. Springer-Verlag, London, 
 *  UK, 245–260
 *
 * The parallel algorithm divides the number of observations by the number of processors. 
 * Each processor is then responsible for obtaining the minimum distance between 
 * a given observation and all the centroids. Once a centroid has been assigned to a given 
 * observation, the centroid ownership counter is increased. After all the observations 
 * have been associated to a centroid, then all centroid coordinates are updated. These 
 * steps are repeated several times until the algorithm converges.
 *
 */

#include "stdio.h"
#include "stdlib.h"
#include "math.h"
#include "mpi.h"
#include "common.h"

// Data set
#include "test5_ds.h" 

// Limit or expand the exceution time by forcing the calculation to a certain number of iterations,
// rather than by solution convergence using the mean square error (mse)
#define MAX_ITER_CNT 15

void initialize_centroids(float c[][DIMENSIONS]);
float compute_distance(float x[DIMENSIONS+1], float c[DIMENSIONS], float xmax[DIMENSIONS]);
void compute_max(float x[][DIMENSIONS+1], float xmax[DIMENSIONS]);

// -----------------------------
int 
main ( int argc, char* argv[] )
{
    int myrank, size;
    int i,k,d;
    float centroid[K_CLUSTERS][DIMENSIONS];
    float centroid_tmp[K_CLUSTERS][DIMENSIONS];
    float xmax[DIMENSIONS];
    float n[K_CLUSTERS];
    float n_tmp[K_CLUSTERS];
    float mse_old;
    float mse = 10000000.0, mymse;
    float myres[N_SAMPLES], res[N_SAMPLES];
    int iter_cnt = 0;
    double t1,t2;

    PRINT( "%c[2J%c[H", 27, 27);
    PRINT("File: %s\r\n",__FILE__);
    PRINT("Compiled %s %s\r\n",__DATE__,__TIME__);

    MPI_Init ( &argc, &argv );
    MPI_Comm_size ( MPI_COMM_WORLD, &size );
    MPI_Comm_rank ( MPI_COMM_WORLD, &myrank );

    if ( myrank == 0 )
    {
        PRINT("%d ranks\r\n",size);
        initialize_centroids(centroid);
        compute_max(DATA, xmax);
        
        #ifdef VERBOSE
        PRINT("Initial Centroids...\r\n");
        for(k=0; k<K_CLUSTERS; k++)
        {
            for(d = 0; d < DIMENSIONS; d++)
            {
                PRINT("c[%d][%d]: %f\r\n", k,d, centroid[k][d]);
            }
            PRINT("--------\r\n", k,d, centroid[k][d]);
        } 
        #endif
    }

    MPI_Barrier(MPI_COMM_WORLD);

    t1 = TIME_STAMP();

    // Broadcast the initial centroid and the max values for each dimension
    MPI_Bcast(centroid, K_CLUSTERS*DIMENSIONS, MPI_FLOAT, 0, MPI_COMM_WORLD);
    MPI_Bcast(xmax, DIMENSIONS, MPI_FLOAT, 0, MPI_COMM_WORLD);

    // Scatter the data
    //MPI_Send(DATA);
    do
    {
        iter_cnt++;

        mse_old = mse;
        mymse = 0;

        // clean intermediate results
        for(k=0; k<K_CLUSTERS; k++)
        {
            // clear the centroid's observation counter
            n_tmp[k] = 0.0;

            for(d = 0; d < DIMENSIONS; d++)
            {
                // clear the centroid accumulated values
                centroid_tmp[k][d] = 0.0;
            }
        }

        for(i=0; i<N_SAMPLES; i++)
            myres[i] = 0.0;
        
        // Compute the distances and select the nearest centroid
        //for(i=0; i<N_SAMPLES; i++)
        for(i=myrank; i<N_SAMPLES; i+=size)
        {
            float min = 1000000.0;
            float distance, min_distance = 0.0;
            int nearest_centroid = 0;


            // distances to each centroid
            for(k=0; k<K_CLUSTERS; k++)
            {
                distance = compute_distance(DATA[i], centroid[k], xmax);
                //PRINT("d(x[%d]<-->c[%d]): %f\r\n", i, k, distance);
                if (distance < min)
                {
                    min = distance;
                    nearest_centroid = k;
                    min_distance = distance;
                }
            }

            //PRINT("nearest_centroid: %d\r\n", nearest_centroid);

            // increase the sample counter associated to the nearest centroid 
            n_tmp[nearest_centroid] = n_tmp[nearest_centroid] + 1.0;

            // accumulate the value in their respective dimension 
            for(d=0; d<DIMENSIONS; d++)
            {
                centroid_tmp[nearest_centroid][d] += DATA[i][d+1];
            }

            // Accumulate the Mean Squared Error. I could recompute the distance again here to add more computation time, if needed.
            mymse += min_distance;
            //PRINT("MSE: %f, min_distance: %f\r\n", mymse, min_distance);

            // Assign the centroid to the current observation (sample)
            myres[i] = (float)nearest_centroid;
        }

        // Consolidate the partial results
        MPI_Allreduce(n_tmp, n, K_CLUSTERS, MPI_FLOAT, MPI_SUM, MPI_COMM_WORLD);
        MPI_Allreduce(centroid_tmp, centroid, K_CLUSTERS*DIMENSIONS, MPI_FLOAT, MPI_SUM, MPI_COMM_WORLD);

        // Recalculate the centroid
        for(k=0; k<K_CLUSTERS; k++)
        {
            n[k] = n[k] == 0.0 ? 1.0 : n[k];

            for(d=0; d<DIMENSIONS; d++)
            {
                centroid[k][d] = centroid[k][d] / n[k];
            }
        }

        MPI_Allreduce(&mymse, &mse, 1, MPI_FLOAT, MPI_SUM, MPI_COMM_WORLD);

        //if ( myrank == 0 )
        //    PRINT("MSE: %f, MSE_OLD: %f\r\n", mse, mse_old);

    } while ( iter_cnt < MAX_ITER_CNT ); // It could also be:  while ( mse < mse_old);

    //MPI_Gather(myres, K_CLUSTERS/size, MPI_FLOAT, res, K_CLUSTERS, MPI_FLOAT, 0, MPI_COMM_WORLD);
    MPI_Reduce(myres, res, N_SAMPLES, MPI_FLOAT, MPI_SUM, 0, MPI_COMM_WORLD);

    t2 = TIME_STAMP();

    // We are done, now print the results
    if ( myrank == 0 )
    {
        PRINT("Iterations: %d. Execution Time: %f\r\n", iter_cnt, t2-t1);

        #ifdef VERBOSE
        for(k=0; k<K_CLUSTERS; k++)
        {
            PRINT("Centroid %d (%3.0f elements):\r\n", k, n[k]);
            for(d = 0; d < DIMENSIONS; d++)
            {
                PRINT(" %f", centroid[k][d]);
            }
            PRINT("\r\n");
        }
        
        for(i=0; i<N_SAMPLES; i++)
        {
            PRINT("x[%d] class: %1.0f\r\n", i, res[i]);
        }
        #endif

        PRINT ( "Test Done!\r\n");
    }

    MPI_Finalize();
    return 0;
}

//---------------------------------------------------
void
compute_max(float x[][DIMENSIONS+1], float xmax[DIMENSIONS])
{
    int i, d;
    float max = x[0][1];

    for(d = 0; d < DIMENSIONS; d++)
    {        
        for (i=0; i<N_SAMPLES; i++)
        {
            if ( x[i][d+1] > max)
            {
                max = x[i][d+1];
            }
        }
        xmax[d] = max;
    }
}

//---------------------------------------------------
float 
compute_distance(float x[DIMENSIONS+1], float c[DIMENSIONS], float xmax[DIMENSIONS])
{
    float distance, acc = 0.0;
    int d;
    for(d = 0; d < DIMENSIONS; d++)
    {        
        //float diff = x[d+1] - c[d];
        float diff = ( x[d+1] - c[d] ) / xmax[d];
        //PRINT("\t x[%d] - c[%d] (%f - %f) = %f\r\n", d,d, x[d+1], c[d], diff);
        acc += diff*diff;
    }
    distance = sqrt(acc);
    //PRINT("\tacc=%f;  sqrt(acc)=%f\r\n", acc, distance);
    return distance;
}

//---------------------------------------------------
void 
initialize_centroids(float c[][DIMENSIONS])
{
    int k, d;

    for(k=0; k<K_CLUSTERS; k++)
    {       
        for(d = 0; d < DIMENSIONS; d++)
        {
            int index = rand() % N_SAMPLES;
            c[k][d] = DATA[index][d+1];
        }
    }
}
