
#include "MPI.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdlib.h>
#include <time.h>
#include <assert.h>
#include <string.h>

#define MPI_MIN 4
#define NDIMS 4
#define NCLUSTERS 10
#define NITERS 100
#define FLT_MAX 3.40282347e+38


ap_uint<16> id_in;

int
run_kmeans(const float *h_data, float *h_clusters,
		int * h_membership, float *h_clusters_members,
		float *h_clusters_sums, long nvectors,
		int ndims, int nclusters, int niters)
{
	int d,i,j;

	for(d = 0 ; d < nvectors ;d++){
#ifdef OPT
#pragma HLS PIPELINE II=1
#endif
#pragma HLS LOOP_TRIPCOUNT max=675
		//printf("data % d\n",d);
		int index = -1;
		float min_dist = FLT_MAX;
		for (i = 0; i < nclusters; i++) {
#ifdef OPT
#pragma HLS PIPELINE II=1
#endif
#pragma HLS LOOP_TRIPCOUNT max=10
			float dist = 0.0;

			for (j = 0; j < ndims; j++) {
#ifdef OPT
#pragma HLS PIPELINE II=1
#endif
#pragma HLS LOOP_TRIPCOUNT max=4

				float diff = h_data[d * ndims + j] - h_clusters[i * ndims + j];
				dist += diff * diff;
			}

			if (dist < min_dist) {
				min_dist = dist;
				index    = i;
			}
		}
		h_membership[d] = index;
		h_clusters_members[index]++;
		for (j = 0; j < ndims; j++)
#ifdef OPT
#pragma HLS PIPELINE II=1
#endif
#pragma HLS LOOP_TRIPCOUNT max=4
h_clusters_sums[index * ndims + j] += h_data[d * ndims + j];
	}
	return 0;
}

void kmeans(
 	ap_uint<16> id,
    const ap_uint<16> mpi_size
	){
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE ap_ctrl_none port=mpi_size
#pragma HLS resource core=AXI4Stream variable=stream_out
#pragma HLS resource core=AXI4Stream variable=stream_in
#pragma HLS DATA_PACK variable 	= stream_out
#pragma HLS DATA_PACK variable 	= stream_in

	int i,j,itr;

    long nvectors_total = 2700/MPI_MIN; 
	long nvectors  = 2700/mpi_size;
	int  ndims     = NDIMS;
	int  nclusters = NCLUSTERS;
	int  niters    = NITERS;

	int world_size,world_rank;

	id_in = id;
    world_rank = id_in;
    world_size = mpi_size;


	float h_data[nvectors_total*ndims];


	float h_clusters[nclusters * ndims];


	float h_clusters_local_sums[nclusters * ndims];

	for (i = 0; i < nclusters; i++)

#pragma HLS LOOP_TRIPCOUNT max=10
for(j = 0 ; j < ndims ;j++)

#pragma HLS LOOP_TRIPCOUNT max=4
(h_clusters_local_sums)[(i*ndims)+j] = 0;

	float h_clusters_global_sums[ nclusters * ndims];


	int h_membership[nvectors_total];
	for (i = 0; i < nclusters; i++)

#pragma HLS LOOP_TRIPCOUNT max=10
(h_membership)[i] = 0;

	float h_clusters_local_members[nclusters];
	for (i = 0; i < nclusters; i++)

#pragma HLS LOOP_TRIPCOUNT max=10
(h_clusters_local_members)[i] = 0;


	int h_clusters_global_members[nclusters];


	while(!MPI_Recv(h_data,20, MPI_FLOAT,0,0,MPI_COMM_WORLD));

	MPI_Init();


	while(!MPI_Recv(h_data, nvectors * ndims, MPI_FLOAT,0,world_rank,MPI_COMM_WORLD))
#pragma HLS LOOP_TRIPCOUNT max=1
;

	for(int itr = 0 ; itr < niters ; itr++){
#pragma HLS LOOP_TRIPCOUNT max=100


		while(!MPI_Recv(h_clusters,nclusters*ndims, MPI_FLOAT,0,world_rank,MPI_COMM_WORLD))
#pragma HLS LOOP_TRIPCOUNT max=1
;
		//MPI_Bcast(h_clusters, nclusters *ndims, MPI_FLOAT, 0, MPI_COMM_WORLD);

		printf("rank %d: setup complete running kmeans iteration:%d ...\n",world_rank,itr);

		for (int i = 0; i < nclusters; i++){
#pragma HLS LOOP_TRIPCOUNT max=10
			h_clusters_local_members[i] = 0;
			if(world_rank == 0)
				h_clusters_global_members[i] = 0;
			for (int j = 0; j < ndims; j++){
#pragma HLS LOOP_TRIPCOUNT max=4
				h_clusters_local_sums[i*ndims+j] = 0;
				if(world_rank == 0)
					h_clusters_global_sums[i*ndims+j] = 0;
			}
		}
		
		int err = run_kmeans(h_data, h_clusters, h_membership,
				h_clusters_local_members, h_clusters_local_sums,
				nvectors, ndims, nclusters, niters);


		
		while(!MPI_Send(h_clusters_local_sums, nclusters * ndims, MPI_FLOAT,0,world_rank,MPI_COMM_WORLD))
#pragma HLS LOOP_TRIPCOUNT max=1
;
		while(!MPI_Send(h_clusters_local_members, nclusters, MPI_FLOAT,0,world_rank,MPI_COMM_WORLD))
#pragma HLS LOOP_TRIPCOUNT max=1
;
	}
}

