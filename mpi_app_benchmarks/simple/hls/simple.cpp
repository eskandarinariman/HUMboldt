
#include "MPI.h"


ap_uint<16> id_in;


void simple(
	){
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS resource core=AXI4Stream variable=stream_out
#pragma HLS resource core=AXI4Stream variable=stream_in
#pragma HLS DATA_PACK variable  = stream_out
#pragma HLS DATA_PACK variable  = stream_in
      MPI_Init();

      float temp[2];
      int recv_rank = 1;
      while(!MPI_Recv(temp,2, MPI_FLOAT,recv_rank,0,MPI_COMM_WORLD));



}


