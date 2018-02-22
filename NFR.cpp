#include "ap_cint.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "ap_utils.h"

#define C_SYNC_ENV_PACKET 0
#define C_CLR2SND_PACKET 1
#define C_DATA_PACKET 2
#define C_ASYNC_ENV_PACKET 3
#define C_RECV_ERROR 4
#define C_DATA_TRANSMISSION_DONE 5


#define DATA 1
#define ENVLP 0


struct ap_axis_in{

	ap_int <64> data;
	ap_uint <8> dest;
	ap_uint<1> last;
};

struct ap_axis_out{

	ap_uint<64> data;
	ap_uint <8> dest;
	ap_uint<1> last;
	ap_uint<8> id;
	ap_uint<40> user;
};


ap_int <32>  reverseEndian32(ap_int <32> num){
	ap_int <32> swapped = ((num & 0x000000FF) << 24) | ((num & 0x0000FF00) <<8) | ((num &0x00FF0000) >> 8) | ((num &0xFF000000) >> 24);
	return swapped;

}

ap_int <64> reverseEndian64(ap_int <64> X) {
 ap_int <64> x = X;
 x = (x & 0x00000000FFFFFFFF) << 32 | (x & 0xFFFFFFFF00000000) >> 32;
 x = (x & 0x0000FFFF0000FFFF) << 16 | (x & 0xFFFF0000FFFF0000) >> 16;
 x = (x & 0x00FF00FF00FF00FF) << 8  | (x & 0xFF00FF00FF00FF00) >> 8;
 return x;
}


void NFR(
		hls::stream <ap_axis_in> stream_in,
		hls::stream <ap_axis_out> stream_out
){
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS resource core=AXI4Stream variable=stream_out
#pragma HLS resource core=AXI4Stream variable=stream_in
#pragma HLS DATA_PACK variable  = stream_out
#pragma HLS DATA_PACK variable  = stream_in
	//ap_uint <48> eth_address = 0x010203040506;

	ap_int <64> header[1];

	ap_axis_in packetIn;
	ap_axis_out packetOut;

	ap_int <48> observedAddress;


	ap_int <1> last;
	ap_int <1> match;

	ap_uint <16> dest;
	ap_uint <40> user;
	ap_uint <8> id;
	//ap_uint <32> dest_tmp;

	//ap_int <16> top2bytes;
	//ap_int <32> bottom4bytes;
	while(1){

		//Get the header
		for(int i=0; i<1; i++){
			packetIn= stream_in.read();
			header[i] = packetIn.data;
		}
		ap_uint<1> header_last = packetIn.last;



		// Get the destination MAC address



		//observedAddress = reverseEndian64(header[0].range(63,16));
		//observedAddress = header[0].range(63,16);


		//top2bytes = ((header[1] & 0x0000FFFF) >> 8) | ((header[1] & 0x0000FFFF) << 8);
		//bottom4bytes = ((header[0] & 0x000000FF) << 24) | ((header[0] & 0x0000FF00) <<8) | ((header[0] &0x00FF0000) >> 8) | ((header[0] &0xFF000000) >> 24);
		//bottom4bytes = reverseEndian32(header[0]);
		//observedAddress = bottom4bytes.concat(top2bytes);
		//*observedAddress_out = observedAddress;

		//ap_wait();
		//Compare the destination MAC address in the Packet to the one MAC address in the firewall
		// if(observedAddress == *eth_address){
		// 	match = 1;
		// }
		// else{
		// 	match = 0;
		// }


		//*match_out = match;

		//dest_tmp = reverseEndian64(header[1].range(15,0));
		//dest = reverseEndian64(header[1].range(15,0));
		//dest = header[1].range(15,8);
		//dest_tmp = dest_tmp >> 16;
		//dest = dest_tmp.range(15,0);
		//dest = (dest >> 8) | (dest << 8);

		//*dest_out = dest;

		//ap_int<64> envlp_packet_data = reverseEndian64(header[0]);
		ap_int<64> envlp_packet_data = header[0];

		if(envlp_packet_data(15,8) == C_SYNC_ENV_PACKET || envlp_packet_data(15,8) == C_CLR2SND_PACKET
			|| envlp_packet_data(15,8) == C_DATA_TRANSMISSION_DONE || envlp_packet_data(15,8) == C_RECV_ERROR){
			ap_axis_out envlp_out;
			envlp_out.data = envlp_packet_data;
			envlp_out.dest = packetIn.dest;
			envlp_out.last = header_last;
			id = envlp_packet_data(7,0);
			envlp_out.id = id;
			user(3,0) = envlp_packet_data(59,56);
			user(7,4) = ENVLP;
			user(39,8) = 0;
			envlp_out.user = user;
			stream_out.write(envlp_out);

		}else if(envlp_packet_data(15,8) == C_DATA_PACKET){
			id = envlp_packet_data(7,0);
			user(3,0) = envlp_packet_data(59,56);
			user(7,4) = DATA;
			user(39,8) = envlp_packet_data(47,16); 
		}


		last = 0;
		while(!last ){
			packetIn = stream_in.read();
			packetOut.last = packetIn.last;
			//packetOut.data = reverseEndian64(packetIn.data);
			packetOut.data = packetIn.data;
			packetOut.dest = packetIn.dest;
			packetOut.id = id;
			packetOut.user = user;
			last = packetIn.last;
			stream_out.write(packetOut);

		}

	}
}
