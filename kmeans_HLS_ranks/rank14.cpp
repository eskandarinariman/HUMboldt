#define MODULE_RANK 14

#include "MPI.h"
#include <stdio.h>
#include <stdlib.h>
/*#include <stdint.h>*/
#include <stdlib.h>
#include <time.h>
#include <assert.h>
#include <string.h>


int
run_kmeans(const float *h_data, float *h_clusters,
		int * h_membership, int *h_clusters_members,
		float *h_clusters_sums, long nvectors,
		int ndims, int nclusters, int niters)
{
	int d,i,j;

	for(d = 0 ; d < nvectors ;d++){
		//printf("data % d\n",d);
		int index = -1;
		float min_dist = FLT_MAX;
		for (i = 0; i < nclusters; i++) {
			float dist = 0.0;

			for (j = 0; j < ndims; j++) {
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
			h_clusters_sums[index * ndims + j] += h_data[d * ndims + j];
	}
	return 0;
}

void rank14(int & send_sts_out,
	int & recv_sts_out){
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS resource core=AXI4Stream variable=stream_out
#pragma HLS resource core=AXI4Stream variable=stream_in
#pragma HLS DATA_PACK variable 	= stream_out
#pragma HLS DATA_PACK variable 	= stream_in
// #pragma HLS STREAM variable 	= stream_out	depth = 1024
// #pragma HLS STREAM variable 	= stream_in     depth = 1024

int i,j,itr;
	long nvectors  = NVECTORS;
	int  ndims     = NDIMS;
	int  nclusters = NCLUSTERS;
	int  niters    = NITERS;

	// Get the number of processes
	int world_size = MPI_size;
	//  MPI_Comm_size(MPI_COMM_WORLD, &world_size);

	// Get the rank of the process
	int world_rank = MPI_rank;
	//  MPI_Comm_rank(MPI_COMM_WORLD, &world_rank);


	float h_data[nvectors*ndims];

	float h_clusters[nclusters * ndims];

	float h_clusters_local_sums[nclusters * ndims];
	for (i = 0; i < nclusters; i++)
		for(j = 0 ; j < ndims ;j++)
			(h_clusters_local_sums)[(i*ndims)+j] = 0;

	float h_clusters_global_sums[ nclusters * ndims];


	int h_membership[nvectors];
	for (i = 0; i < nclusters; i++)
		(h_membership)[i] = 0;

	int h_clusters_local_members[nclusters];
	for (i = 0; i < nclusters; i++)
		(h_clusters_local_members)[i] = 0;


	int h_clusters_global_members[nclusters];




	MPI_Init();


	while(!MPI_Recv_f(h_data, nvectors * ndims, MPI_FLOAT,0,world_rank,MPI_COMM_WORLD,recv_sts_out));

	for(itr = 0 ; itr < niters ; itr++){

		while(!MPI_Recv_f(h_clusters,nclusters*ndims, MPI_FLOAT,0,world_rank,MPI_COMM_WORLD,recv_sts_out));
		//MPI_Bcast(h_clusters, nclusters *ndims, MPI_FLOAT, 0, MPI_COMM_WORLD);

		printf("rank %d: setup complete running kmeans iteration:%d ...\n",world_rank,itr);

		for (int i = 0; i < nclusters; i++){
			h_clusters_local_members[i] = 0;
			if(world_rank == 0)
				h_clusters_global_members[i] = 0;
			for (int j = 0; j < ndims; j++){
				h_clusters_local_sums[i*ndims+j] = 0;
				if(world_rank == 0)
					h_clusters_global_sums[i*ndims+j] = 0;
			}
		}
		
		int err = run_kmeans(h_data, h_clusters, h_membership,
				h_clusters_local_members, h_clusters_local_sums,
				nvectors, ndims, nclusters, niters);



		// MPI_Reduce(h_clusters_local_sums, h_clusters_global_sums,nclusters * ndims, MPI_FLOAT,MPI_SUM,0,MPI_COMM_WORLD);
		
		while(!MPI_Send(h_clusters_local_sums, nclusters * ndims, MPI_FLOAT,0,world_rank,MPI_COMM_WORLD,send_sts_out));
		while(!MPI_Send(h_clusters_local_members, nclusters, MPI_INT,0,world_rank,MPI_COMM_WORLD,send_sts_out));
	}
}
