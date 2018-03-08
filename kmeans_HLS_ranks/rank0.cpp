#define MODULE_RANK 0

#include "MPI.h"

// #define MPI_size 4
// #define MPI_rank 0

// #define NVECTORS 400
// #define NDIMS 2
// #define NCLUSTERS 2
// #define NITERS 2
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


void rank0(
	int & send_sts_out1,
	int & send_sts_out2
	){
//#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS resource core=AXI4Stream variable=stream_out
#pragma HLS resource core=AXI4Stream variable=stream_in
#pragma HLS DATA_PACK variable  = stream_out
#pragma HLS DATA_PACK variable  = stream_in
// #pragma HLS STREAM variable 	= stream_out	depth = 1024
// #pragma HLS STREAM variable 	= stream_in     depth = 1024


		int i,j,itr;
	  // need to be careful with large sizes nvectors * ndims can overflow a signed int
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


	    float k = 0.0;
	    float h_data[nvectors*ndims];
	    for(i = 0; i < nvectors;i++){
	    	for(j = 0 ; j < ndims;j++){
	    		h_data[(i*ndims)+j] = k;
	    		k++;
	    	}
	    }
	    k = 0.0;
	    float h_clusters[nclusters * ndims];
	    for(i = 0; i < nclusters;i++){	
	   	    for(j = 0 ; j < ndims;j++){	
	   	    	h_clusters[(i*ndims)+j] = k;
	   	    	k++;
	   	    }
	    }

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

	    for(i = 1; i < world_size ;i++){
	    	printf("send data to rank %d\n",i);
	    	while(!MPI_Send(h_data,nvectors * ndims , MPI_FLOAT,i,i,MPI_COMM_WORLD,send_sts_out2));
	    }


	    for(itr = 0 ; itr < niters ;itr++){
    		if(world_rank == 0){
      			for(int s = 1 ; s < MPI_size ;s++){
        			while(!MPI_Send(h_clusters,nclusters*ndims, MPI_FLOAT,s,world_rank,MPI_COMM_WORLD,send_sts_out2));
      			}
    		}
    		else{
        		while(!MPI_Recv_f(h_clusters,nclusters*ndims, MPI_FLOAT,0,world_rank,MPI_COMM_WORLD,send_sts_out1));
    		}


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

 
    		if(world_rank == 1){

    			for(int m = 0; m < nclusters ;m++){ 
          			for(int n = 0; n < ndims ;n++){
            			h_clusters_global_sums[(m*ndims)+n] += h_clusters_local_sums[(m*ndims)+n];
            			h_clusters_local_sums[(m*ndims)+n] = -1;
          			}
        		}
	
        		for(int m = 0; m < nclusters ;m++){
          			h_clusters_global_members[m] += h_clusters_local_members[m];
          			h_clusters_local_members[m] = -1;
        		}

      			for(int i = 1; i < MPI_size; i++){
        			while(!MPI_Recv_f(h_clusters_local_sums, nclusters * ndims, MPI_FLOAT,i,world_rank,MPI_COMM_WORLD,send_sts_out1));

       	 			for(int m = 0; m < nclusters ;m++){ 
          				for(int n = 0; n < ndims ;n++){
            				h_clusters_global_sums[(m*ndims)+n] += h_clusters_local_sums[(m*ndims)+n];
            				h_clusters_local_sums[(m*ndims)+n] = -1;
          				}
        			}
      			}
  
      			for(int i = 1; i < MPI_size; i++){
        			while(!MPI_Recv_i(h_clusters_local_members, nclusters, MPI_INT,i,world_rank,MPI_COMM_WORLD,send_sts_out1));
        			for(int m = 0; m < nclusters ;m++){
          				h_clusters_global_members[m] += h_clusters_local_members[m];
          				h_clusters_local_members[m] = -1;
        			}
      			}
  
      			for (int i = 0; i < nclusters; i++)
        			for (int j = 0; j < ndims; j++)
          				h_clusters[i * ndims + j] = h_clusters_global_sums[i * ndims + j] / h_clusters_global_members[i];

    	}
   	 	else{
      		while(!MPI_Send(h_clusters_local_sums, nclusters * ndims, MPI_FLOAT,0,world_rank,MPI_COMM_WORLD,send_sts_out1));
      		while(!MPI_Send(h_clusters_local_members, nclusters, MPI_INT,0,world_rank,MPI_COMM_WORLD,send_sts_out1));
    	}
	}
}


