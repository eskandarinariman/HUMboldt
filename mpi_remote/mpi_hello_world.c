// Author: Wes Kendall
// Copyright 2011 www.mpitutorial.com
// This code is provided freely with the tutorials on mpitutorial.com. Feel
// free to modify it for your own use. Any distribution of the code must
// either provide a link to www.mpitutorial.com or keep this header intact.
//
// An intro MPI hello world program that uses MPI_Init, MPI_Comm_size,
// MPI_Comm_rank, MPI_Finalize, and MPI_Get_processor_name.
//
#include "MPI.h"
#include <stdio.h>
#include <stdlib.h>
/*#include <stdint.h>*/
#include <stdlib.h>
#include <assert.h>
#include <string.h>
#include "kmeans.h"

#define MPI_size 16
#define MPI_rank 0

#define NVECTORS 150
#define NDIMS 10
#define NCLUSTERS 10
#define NITERS 10

char* new_filename(char * infile,int i);
// int run_kmeans(const float *h_data, const float *d_data, float *h_clusters,
//     float *d_clusters, int *h_membership, int *d_membership,
//     int *h_clusters_members, float *h_clusters_sums, long nvectors,
//     int ndims, int nclusters, int niters);

// void
// cpu_sum_clusters(const float *data, const int *membership, int *clusters_members,
//     float *clusters_sums, long nvectors, int ndims, int nclusters);


// int
// setup_data(float **h_data, float **d_data, float **h_clusters, float **d_clusters,
//     int **h_membership, int **d_membership, int **h_clusters_members,
//     float **h_clusters_sums, long nvectors, int ndims, int nclusters, const char *infile);


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

  int main(int argc, char** argv) {


    if (argc != 2) {
      printf("usage: ./kmeans <infile> \n");
      return 1;
    }

    cout<<"size: "<< ETH_FRAME_LEN << ETH_DATA_LEN <<endl;
     clock_t end,begin;
    int i,j,itr;
    char *infile  = argv[1];
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


    float h_data[nvectors*ndims];
    if(world_rank == 0){
      int errr = read_data(h_data, nvectors * ndims * sizeof(float), infile);
      if (errr) {
        fprintf(stderr, "read_data error: %d\n", errr);
        return 1;
      } 
    }

    float h_clusters[nclusters * ndims];
    if(world_rank == 0){
      for (i = 0; i < nclusters; i++)
       for (j = 0; j < ndims; j++)
        (h_clusters)[i * ndims + j] = (h_data)[i * ndims + j];
    }

    float h_clusters_local_sums[nclusters * ndims];
    for (i = 0; i < nclusters; i++)
      for(j = 0 ; j < ndims ;j++)
        (h_clusters_local_sums)[(i*ndims)+j] = 0;

    double h_clusters_global_sums[ nclusters * ndims];
    if(world_rank == 0){
      for (i = 0; i < nclusters; i++)
        for(j = 0 ; j < ndims ;j++)
          (h_clusters_global_sums)[(i*ndims)+j] = 0;
    }


    int h_membership[nvectors];
    for (i = 0; i < nclusters; i++)
      (h_membership)[i] = 0;

    int h_clusters_local_members[nclusters];
    for (i = 0; i < nclusters; i++)
      (h_clusters_local_members)[i] = 0;


    int h_clusters_global_members[nclusters];
    if(world_rank == 0){
      for (i = 0; i < nclusters; i++)
        (h_clusters_global_members)[i] = 0;
    }



    MPI_Init();

   
begin = clock();
  if(world_rank == 0){
    for(int i = 1; i < world_size ;i++){
      //printf("send data to rank %d\n",i);
      int error_code = MPI_Send(h_data,nvectors * ndims , MPI_FLOAT,i,i,MPI_COMM_WORLD);
      if (error_code != MPI_SUCCESS) {

          char error_string[BUFSIZ];
          int length_of_error_string;

          // MPI_Error_string(error_code, error_string, &length_of_error_string);
          // fprintf(stderr, "%3d: %s\n", world_rank, error_string);
      }
      // int errr = read_data(h_data, nvectors * ndims * sizeof(float), new_filename(infile,i));
      // if (errr) {
      //   fprintf(stderr, "read_data error: %d\n", errr);
      //   return 1;
      // }
    }
  }
  else{
    int error_code = MPI_Recv(h_data, nvectors * ndims, MPI_FLOAT,0,world_rank,MPI_COMM_WORLD);
    if (error_code != MPI_SUCCESS) {
        char error_string[BUFSIZ];
        int length_of_error_string;
        // MPI_Error_string(error_code, error_string, &length_of_error_string);
        // fprintf(stderr, "%3d: %s\n", world_rank, error_string);
    }
  }

  // if(world_rank == 0){ 
  //   printf("befor Bcast ... rank : %d \n",world_rank);
  //   for (i = 0; i < nclusters; i++)
  //     for (j = 0; j < ndims; j++)
  //       printf("%f ",h_clusters[i*ndims+j]);
  // }

  // printf(" after Bcast ... rank : %d \n",world_rank);
  //   for (i = 0; i < nclusters; i++)
  //     for (j = 0; j < ndims; j++)
  //       printf("%f ",h_clusters[i*ndims+j]);

    // int err = setup_data(&h_data, &d_data, &h_clusters, &d_clusters,
    //   &h_membership, &d_membership, &h_clusters_members,
    //   &h_clusters_sums, nvectors, ndims, nclusters, infile);
    // if (err)
    //   return err;

  // Initialize the MPI environment. The two arguments to MPI Init are not
  // currently used by MPI implementations, but are there in case future
  // implementations might need the arguments.

  for(itr = 0 ; itr < niters ;itr++){
    if(world_rank == 0){
      for(int s = 1 ; s < MPI_size ;s++){
        //printf("send clusters to rank %d\n",s);
        MPI_Send(h_clusters,nclusters*ndims, MPI_FLOAT,s,world_rank,MPI_COMM_WORLD);
      }
    }else{
        MPI_Recv(h_clusters,nclusters*ndims, MPI_FLOAT,0,world_rank,MPI_COMM_WORLD);
    }    
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
 
    // int err = run_kmeans(h_data, h_clusters, h_membership,
    //   h_clusters_local_members, h_clusters_local_sums, 
    //   nvectors, ndims, nclusters, niters);
    // if (err)
    //   return err;

    // for(int m = 0; m < nclusters ;m++){ 
    //   for(int n = 0; n < ndims ;n++){
    //     h_clusters_global_sums[(m*ndims)+n] += h_clusters_local_sums[(m*ndims)+n];
    //     printf("h_clusters_local_sums: %f\n",h_clusters_local_sums[m * ndims + n]);
    //     h_clusters_local_sums[(m*ndims)+n] = -1;
    //   }
    // }

    // for(int m = 0; m < nclusters ;m++){
    //   h_clusters_global_members[m] += h_clusters_local_members[m];
    //   //cout << "h_cluster_local_members: " << h_clusters_local_members[m] << endl;
    //   h_clusters_local_members[m] = -1;
    // }

    // MPI_Reduce(h_clusters_local_sums, h_clusters_global_sums,nclusters * ndims, MPI_FLOAT,MPI_SUM,0,MPI_COMM_WORLD);
    if(world_rank == 0){
      for(int i = 1; i < MPI_size; i++){
        MPI_Recv(h_clusters_local_sums, nclusters * ndims, MPI_FLOAT,i,world_rank,MPI_COMM_WORLD);

        // for (int m = 0; m < nclusters; m++)
        //   for (int n = 0; n < ndims; n++){
        //     if(i == 15)
        //       printf("rank: %d h_clusters_local_sums: %f\n",i,h_clusters_local_sums[m * ndims + n]);
        //   }

        for(int m = 0; m < nclusters ;m++){ 
          for(int n = 0; n < ndims ;n++){
            h_clusters_global_sums[(m*ndims)+n] += h_clusters_local_sums[(m*ndims)+n];
            h_clusters_local_sums[(m*ndims)+n] = -1;
          }
        }

      }
  
      // MPI_Reduce(h_clusters_local_members, h_clusters_global_members,nclusters, MPI_FLOAT,MPI_SUM,0,MPI_COMM_WORLD);
      for(int i = 1; i < MPI_size; i++){
        
        MPI_Recv(h_clusters_local_members, nclusters, MPI_INT,i,world_rank,MPI_COMM_WORLD);
        // for(int m = 0; m < nclusters ;m++){
        //   cout <<"rank "<< i <<"h_cluster_local_members: " << h_clusters_local_members[m] << endl;
        // }

        for(int m = 0; m < nclusters ;m++){
          h_clusters_global_members[m] += h_clusters_local_members[m];
          h_clusters_local_members[m] = -1;
        }

      }
  
      for (int i = 0; i < nclusters; i++)
        for (int j = 0; j < ndims; j++)
          h_clusters[i * ndims + j] = h_clusters_global_sums[i * ndims + j] / h_clusters_global_members[i];

      for (i = 0; i < nclusters; i++)
        for (j = 0; j < ndims; j++)
          printf("itr: %d clustrer: %f\n",itr,h_clusters[i * ndims + j]);
      cin.get();
    }else{
      MPI_Send(h_clusters_local_sums, nclusters * ndims, MPI_FLOAT,0,world_rank,MPI_COMM_WORLD);
      MPI_Send(h_clusters_local_members, nclusters, MPI_INT,0,world_rank,MPI_COMM_WORLD);
    }
  }
end = clock();
  if(world_rank == 0){
    for (i = 0; i < nclusters; i++) {
      printf("clusters[%d]:\n", i);
      printf("%f", h_clusters[i * ndims + 0]);
      for (j = 1; j < ndims; j++)
        printf(", %f", h_clusters[i * ndims + j]);
      printf("\n");
    }
  }
  // int num_of_ints = 5;
  // int * s_buf = (int *) malloc(num_of_ints);
  // for(i = 0 ; i < num_of_ints ;i++){
  //   s_buf[i] = i;
  // }


  // if(world_rank == 0){
  //   // printf("rank 0 sends buffer to other ranks...\n");
  //   // MPI_Send(s_buf,num_of_ints,MPI_INT,1,0,MPI_COMM_WORLD);
  //   //  MPI_Send(s_buf,num_of_ints,MPI_INT,2,1,MPI_COMM_WORLD);
  //   //   MPI_Send(s_buf,num_of_ints,MPI_INT,3,2,MPI_COMM_WORLD);

  //   kernel_call(world_rank);

  // }
  // else if(world_rank == 1){
  //   // int * r_buf = (int *) malloc(num_of_ints);
  //   // MPI_Recv(r_buf,num_of_ints,MPI_INT,0,0,MPI_COMM_WORLD,MPI_STATUS_IGNORE);
  //   // printf(" from rank 1 %d\n",r_buf[world_rank]);
  //   kernel_call(world_rank);
  // }
  // else if(world_rank == 2){
  //   // int * r_buf = (int *) malloc(num_of_ints);
  //   // MPI_Recv(r_buf,num_of_ints,MPI_INT,0,1,MPI_COMM_WORLD,MPI_STATUS_IGNORE);
  //   // printf(" from rank 2 %d\n",r_buf[world_rank]);
  //   kernel_call(world_rank);
  // }
  // else if(world_rank == 3){
  //   // int * r_buf = (int *) malloc(num_of_ints);
  //   // MPI_Recv(r_buf,num_of_ints,MPI_INT,0,2,MPI_COMM_WORLD,MPI_STATUS_IGNORE);
  //   // printf(" from rank 3 %d\n",r_buf[world_rank]);
  //   kernel_call(world_rank);
  // }




  // // Get the name of the processor
  //   char processor_name[MPI_MAX_PROCESSOR_NAME];
  //   int name_len;
  //   MPI_Get_processor_name(processor_name, &name_len);

  // // Print off a hello world message
  // //  printf("****************************\nKernel is running on processor %s, rank %d out of %d processors\n",
  // //      processor_name, world_rank, world_size);

  // // should be on .cu file
  // // err = free_data(&h_data, &d_data, &h_clusters, &d_clusters,
  // //     &h_membership, &d_membership, &h_clusters_members,
  // //     &h_clusters_sums);
  // // if (err)
  // //   return err;

  // // Finalize the MPI environment. No more MPI calls can be made after this
  double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
  if(world_rank ==0)
    printf("time :%f\n",time_spent );
  MPI_Finalize();
}

char* new_filename(char * infile,int i){
  size_t len = strlen(infile);
  char *str2 = (char *)malloc(len + 1 + 1 );
  strcpy(str2, infile);
    str2[len] = i + '0';
    str2[len + 1] = '\0';
    return str2;
}



