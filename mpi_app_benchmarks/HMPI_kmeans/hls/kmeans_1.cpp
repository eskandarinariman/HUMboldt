
#include "MPI.h"

#define MPI_MIN 16
#define NDIMS 64
#define NCLUSTERS 32
#define NITERS 100
#define FLT_MAX 3.40282347e+38


ap_uint<16> id_in;




void kmeans_1(
	const ap_uint<16> id,
    const ap_uint<16> mpi_size
	){
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE ap_ctrl_none port=mpi_size
#pragma HLS resource core=AXI4Stream variable=stream_out
#pragma HLS resource core=AXI4Stream variable=stream_in
#pragma HLS DATA_PACK variable  = stream_out
#pragma HLS DATA_PACK variable  = stream_in
// #pragma HLS STREAM variable 	= stream_out	depth = 1024
// #pragma HLS STREAM variable 	= stream_in     depth = 1024

    //start = 0;
		int i,j,itr;
	  // need to be careful with large sizes nvectors * ndims can overflow a signed int
      long nvectors_total = 384/MPI_MIN;
	    long nvectors  = 384/mpi_size;
	    int  ndims     = NDIMS;
	    int  nclusters = NCLUSTERS;
	    int  niters    = NITERS;

      int world_size,world_rank;

    id_in = id;
    world_rank = id_in;
    world_size = mpi_size;



	    float k = 0.0;
	    float h_data[nvectors_total*ndims];
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


	    int h_membership[nvectors_total];
	    for (i = 0; i < nclusters; i++)
	    	(h_membership)[i] = 0;

	    float h_clusters_local_members[nclusters];
	    for (i = 0; i < nclusters; i++)
	    	(h_clusters_local_members)[i] = 0;


	    int h_clusters_global_members[nclusters];

      //dummy sends to make connections
      for(i = 2; i <= world_size ;i++){
        while(!MPI_Send(h_data,20, MPI_FLOAT,i,i,MPI_COMM_WORLD));
      }

      float temp[2];
      temp[0] = 1;
      while(!MPI_Recv(temp,2, MPI_FLOAT,0,0,MPI_COMM_WORLD));
      while(!MPI_Recv(temp,2, MPI_FLOAT,0,0,MPI_COMM_WORLD));



      MPI_Init();

	    for(i = 2; i <= world_size ;i++){
	    	printf("send data to rank %d\n",i);
	    	while(!MPI_Send(h_data,nvectors * ndims , MPI_FLOAT,i,i,MPI_COMM_WORLD));
	    }


	    for(int itr = 0 ; itr < niters ;itr++){
    		if(world_rank == 1){
      			for(int s = 2 ; s <= world_size ;s++){
        			while(!MPI_Send(h_clusters,nclusters*ndims, MPI_FLOAT,s,world_rank,MPI_COMM_WORLD));
      			}
    		}
    		else{
        		while(!MPI_Recv(h_clusters,nclusters*ndims, MPI_FLOAT,1,world_rank,MPI_COMM_WORLD));
    		}


    		for (int i = 0; i < nclusters; i++){
    		  	h_clusters_local_members[i] = 0;
    		  	if(world_rank == 1)
    		    	h_clusters_global_members[i] = 0;
    		 	for (int j = 0; j < ndims; j++){
    		    	h_clusters_local_sums[i*ndims+j] = 0;
    		    	if(world_rank == 1)
    		      	h_clusters_global_sums[i*ndims+j] = 0;
    		  	}
    		}

        // int err = run_kmeans(h_data, h_clusters, h_membership,
				// h_clusters_local_members, h_clusters_local_sums,
				// nvectors, ndims, nclusters, niters);

 
    		if(world_rank == 1){

    	 // for(int m = 0; m < nclusters ;m++){ 
       //    			for(int n = 0; n < ndims ;n++){
       //      			h_clusters_global_sums[(m*ndims)+n] += h_clusters_local_sums[(m*ndims)+n];
       //      			h_clusters_local_sums[(m*ndims)+n] = -1;
       //    			}
       //  		}
	
       //  		for(int m = 0; m < nclusters ;m++){
       //    			h_clusters_global_members[m] += h_clusters_local_members[m];
       //    			h_clusters_local_members[m] = -1;
       //  		}

      			for(int i = 2; i <= world_size; i++){
        			while(!MPI_Recv(h_clusters_local_sums, nclusters * ndims, MPI_FLOAT,i,world_rank,MPI_COMM_WORLD));

       	 			for(int m = 0; m < nclusters ;m++){ 
          				for(int n = 0; n < ndims ;n++){
            				h_clusters_global_sums[(m*ndims)+n] += h_clusters_local_sums[(m*ndims)+n];
            				//h_clusters_local_sums[(m*ndims)+n] = -1;
          				}
        			}
      			}
  
      			for(int i = 2; i <= world_size; i++){
        			while(!MPI_Recv(h_clusters_local_members, nclusters, MPI_FLOAT,i,world_rank,MPI_COMM_WORLD));
        			for(int m = 0; m < nclusters ;m++){
          				h_clusters_global_members[m] += h_clusters_local_members[m];
          				//h_clusters_local_members[m] = -1;
        			}
      			}
  
      			for (int i = 0; i < nclusters; i++)
        			for (int j = 0; j < ndims; j++)
          				h_clusters[i * ndims + j] = h_clusters_global_sums[i * ndims + j] / h_clusters_global_members[i];

    	}
   	 	else{
      		while(!MPI_Send(h_clusters_local_sums, nclusters * ndims, MPI_FLOAT,1,world_rank,MPI_COMM_WORLD));
      		while(!MPI_Send(h_clusters_local_members, nclusters, MPI_FLOAT,1,world_rank,MPI_COMM_WORLD));
    	}
	}

  temp[0] = 0;
  while(!MPI_Send(temp,2, MPI_FLOAT,0,0,MPI_COMM_WORLD));


}


