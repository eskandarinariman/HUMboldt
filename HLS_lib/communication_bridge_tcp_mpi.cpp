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

#define MAX_ETH_FRAME_BYTES 1460
#define MIN_ETH_FRAME_BYTES 60
#define EXTREA_DATA_PACKET_BYTES 8

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


struct net_axis{

	ap_int <64> data;
	ap_uint <8> dest;
	ap_uint <8> keep;
	ap_uint<1> last;
};

struct app_axis{

	ap_uint<64> data;
	ap_uint <8> dest;
	ap_uint<1> last;
	ap_uint <8> keep;
	ap_uint<8> id;
	ap_uint<40> user;
};


void net_to_app(hls::stream <net_axis> & from_net,
				hls::stream <app_axis> & to_app){
#pragma HLS PIPELINE II=1

	static ap_uint<3> nta_state = 0;
	static net_axis net_packet_in;
	static ap_uint <1> last;
 	static ap_uint <16> dest;
	static ap_uint <40> user;
	static ap_uint <8> id;
	static int expected_bytes = 0;

	static int byte_counter = 0;

	switch (nta_state)
	{
	case 0:
		if (!from_net.empty()){
			net_packet_in = from_net.read();
			if( net_packet_in.data(31,24) == C_SYNC_ENV_PACKET ||
				net_packet_in.data(31,24) == C_CLR2SND_PACKET|| 
				net_packet_in.data(31,24) == C_DATA_TRANSMISSION_DONE ||
				net_packet_in.data(31,24) == C_RECV_ERROR){

				app_axis envlp_out;
				envlp_out.data = net_packet_in.data;
				envlp_out.dest = net_packet_in.dest;
				envlp_out.last = 1;
				envlp_out.id   = net_packet_in.data(23,16);

				ap_uint <40> user;
				user(3,0) =net_packet_in.data(59,56);
				user(7,4) = ENVLP;
				user(39,8) = 0;
				envlp_out.user = user;

				envlp_out.keep = 0xff;
				to_app.write(envlp_out);
				last = 0;
				nta_state = 0;				
			}
			else if(net_packet_in.data(31,24) == C_DATA_PACKET){
				dest = net_packet_in.data(15,0);
				id = net_packet_in.data(23,16);

				user(3,0) = net_packet_in.data(59,56);
				user(7,4) = DATA;
				user(39,8) = 0;

				nta_state = 1;
				last = net_packet_in.last;
				//expected_bytes = net_packet_in.data(47,32);
				byte_counter = 0;
			}
		}
		break;
	case 1:
		if(!last){
			if(!from_net.empty()){
				net_packet_in = from_net.read();
				app_axis packetOut;

				packetOut.keep = net_packet_in.keep;
				// ap_uint<8> keep_temp = net_packet_in.keep;

				// for(int i = 0 ; i < 8 ;i++){
				// 	if(keep_temp[i] == 1)
				// 		byte_counter += 1;
				// }

				
				last = net_packet_in.last;
				packetOut.last = last;
			
				//packetOut.data = reverseEndian64(packetIn.data);
				packetOut.data = net_packet_in.data;
				packetOut.dest = dest;
				packetOut.id = id;
				packetOut.user = user;
				to_app.write(packetOut);
				nta_state = 1;
			}
		}
		else{
			nta_state = 0;
		}
		break;
	}
}

void app_to_net(hls::stream <app_axis> & from_app,
				hls::stream <net_axis> & to_net){

#pragma HLS PIPELINE II=1

	static ap_uint<3> atn_state = 0;
	static net_axis extraPayload;
	static app_axis app_packet_in;
	static net_axis packetOut;
	static ap_uint<1> last = 0;
	static int byte_counter;

	static ap_uint<32> bytes_from_prev;
	static ap_uint<4> keep_from_prev;

	static app_axis currPayloadIn;

	static bool has_from_prev;

	static int remaining_size;


	switch (atn_state)
	{
	case 0:
		if (!from_app.empty()){
			app_packet_in = from_app.read();

			if(app_packet_in.user(7,4) == ENVLP){
				app_packet_in.data(63,56) = app_packet_in.user(3,0);
				packetOut.data = app_packet_in.data;
				packetOut.dest = app_packet_in.dest;
				packetOut.keep = app_packet_in.keep;
				packetOut.last = app_packet_in.last;

				to_net.write(packetOut);
				atn_state = 0;
			}
			else if(app_packet_in.user(7,4) == DATA){

				extraPayload.data = 0;
				extraPayload.dest = app_packet_in.dest;
				extraPayload.data(15,0) = app_packet_in.dest;
				extraPayload.data(23,16) = app_packet_in.id;
				extraPayload.data(31,24) = C_DATA_PACKET;

				remaining_size = app_packet_in.user(39,8);

				if(remaining_size + EXTREA_DATA_PACKET_BYTES >= MAX_ETH_FRAME_BYTES){
					extraPayload.data(47,32) = MAX_ETH_FRAME_BYTES-EXTREA_DATA_PACKET_BYTES;
					remaining_size -= MAX_ETH_FRAME_BYTES-EXTREA_DATA_PACKET_BYTES;
				}
				else{
					extraPayload.data(47,32) = remaining_size;
				}
 
				extraPayload.data(63,56) = app_packet_in.user(3,0);
				extraPayload.last = 0;
				extraPayload.keep = 0xff;
				to_net.write(extraPayload);
				atn_state = 1;
			}
		}
		break;
	case 1:{
		packetOut.data = app_packet_in.data;
		packetOut.dest = app_packet_in.dest;
		packetOut.keep = app_packet_in.keep;
		packetOut.last = app_packet_in.last;
		to_net.write(packetOut);
		byte_counter = 8;
		last = app_packet_in.last;
		atn_state = 2;
		}
		break;
	case 2:
		if(!last){	
			if(!from_app.empty()){			
				currPayloadIn = from_app.read();
				packetOut.data = currPayloadIn.data;
				//currPayloadOut.data = currPayloadIn.data;
				packetOut.keep = currPayloadIn.keep;
				ap_uint<8> keep_temp = currPayloadIn.keep;
				for(int i = 0 ; i < 8 ;i++){
					if(keep_temp[i] == 1)
						byte_counter += 1;
				}
				if(byte_counter >= MAX_ETH_FRAME_BYTES-8){	
					packetOut.last = 1;
					byte_counter = 0;
					bytes_from_prev = currPayloadIn.data(63,32);
					keep_from_prev = currPayloadIn.keep(7,4);

					packetOut.data(63,32) = 0;
					packetOut.keep(7,4) = 0;

					has_from_prev = 1;

					packetOut.dest = currPayloadIn.dest;
					last = currPayloadIn.last;
					to_net.write(packetOut);
					atn_state = 3;
				}
				else{
					packetOut.last = currPayloadIn.last;
					packetOut.dest = currPayloadIn.dest;
					to_net.write(packetOut);
					last = currPayloadIn.last;
				}
			}
		}
		else{
			atn_state = 0;
		}
		break;
	case 4:
		if(!last){	
			if(!from_app.empty()){			
				if(byte_counter >= MAX_ETH_FRAME_BYTES - 16){	
					packetOut.last = 1;
					byte_counter = 0;
					
					packetOut.data(31,0) = bytes_from_prev;
					packetOut.keep(3,0) = keep_from_prev;

					packetOut.data(63,32) = 0;
					packetOut.keep(7,4) = 0;

					has_from_prev = 0;

					packetOut.dest = currPayloadIn.dest;
					last = currPayloadIn.last;
					to_net.write(packetOut);
					atn_state = 3;
				}
				else{
					currPayloadIn = from_app.read();
				
					packetOut.data(31,0) = bytes_from_prev;
					packetOut.keep(3,0) = keep_from_prev;
	
					packetOut.data(63,32) = currPayloadIn.data(31,0);
					packetOut.keep(7,4) = currPayloadIn.keep(3,0);
	
					bytes_from_prev = currPayloadIn.data(63,32);
					keep_from_prev = currPayloadIn.keep(7,4);
	
					//currPayloadOut.data = currPayloadIn.data;
					ap_uint<8> keep_temp = packetOut.keep;
					for(int i = 0 ; i < 8 ;i++){
						if(keep_temp[i] == 1)
							byte_counter += 1;
					}
					packetOut.last = 0;
					packetOut.dest = currPayloadIn.dest;
					to_net.write(packetOut);
					last = currPayloadIn.last;
				}
			}
		}
		else{
			atn_state = 5;
		}
		break;
	case 3:{
			if(remaining_size + EXTREA_DATA_PACKET_BYTES >= MAX_ETH_FRAME_BYTES){
				extraPayload.data(47,32) = MAX_ETH_FRAME_BYTES-EXTREA_DATA_PACKET_BYTES;
				remaining_size -= MAX_ETH_FRAME_BYTES-EXTREA_DATA_PACKET_BYTES; 
			}
			else{
				extraPayload.data(47,32) = remaining_size;
			}
			to_net.write(extraPayload);
			if(has_from_prev)
				atn_state = 4;
			else
				atn_state = 2;
		}
		break;
	case 5:{
			packetOut.last = 1;
			byte_counter = 0;
			
			packetOut.data(31,0) = bytes_from_prev;
			packetOut.keep(3,0) = keep_from_prev;

			packetOut.data(63,32) = 0;
			packetOut.keep(7,4) = 0;

			has_from_prev = 0;

			packetOut.dest = currPayloadIn.dest;
			to_net.write(packetOut);
			atn_state = 0;
		}
		break;
	}
}


void communication_bridge_tcp_mpi(
		hls::stream <app_axis> & from_app,
		hls::stream <app_axis> & to_app,
		hls::stream <net_axis> & from_net,
		hls::stream <net_axis> & to_net
){
#pragma HLS DATAFLOW
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS resource core=AXI4Stream variable=from_app
#pragma HLS resource core=AXI4Stream variable=to_app
#pragma HLS resource core=AXI4Stream variable=from_net
#pragma HLS resource core=AXI4Stream variable=to_net
#pragma HLS DATA_PACK variable  = from_app
#pragma HLS DATA_PACK variable  = to_app
#pragma HLS DATA_PACK variable  = from_net
#pragma HLS DATA_PACK variable  = to_net


	net_to_app(from_net,to_app);
	app_to_net(from_app,to_net);











	// //ap_uint <48> eth_address = 0x010203040506;

	// ap_int <64> header[1];

	// ap_axis_in packetIn;
	// ap_axis_out packetOut;

	// ap_int <48> observedAddress;


	// ap_int <1> last;
	// ap_int <1> match;

	// ap_uint <16> dest;
	// ap_uint <40> user;
	// ap_uint <8> id;
	// //ap_uint <32> dest_tmp;

	// //ap_int <16> top2bytes;
	// //ap_int <32> bottom4bytes;
	// while(1){

	// 	//Get the header
	// 	for(int i=0; i<1; i++){
	// 		packetIn= stream_in.read();
	// 		header[i] = packetIn.data;
	// 	}
	// 	ap_uint<1> header_last = packetIn.last;



	// 	// Get the destination MAC address



	// 	//observedAddress = reverseEndian64(header[0].range(63,16));
	// 	//observedAddress = header[0].range(63,16);


	// 	//top2bytes = ((header[1] & 0x0000FFFF) >> 8) | ((header[1] & 0x0000FFFF) << 8);
	// 	//bottom4bytes = ((header[0] & 0x000000FF) << 24) | ((header[0] & 0x0000FF00) <<8) | ((header[0] &0x00FF0000) >> 8) | ((header[0] &0xFF000000) >> 24);
	// 	//bottom4bytes = reverseEndian32(header[0]);
	// 	//observedAddress = bottom4bytes.concat(top2bytes);
	// 	//*observedAddress_out = observedAddress;

	// 	//ap_wait();
	// 	//Compare the destination MAC address in the Packet to the one MAC address in the firewall
	// 	// if(observedAddress == *eth_address){
	// 	// 	match = 1;
	// 	// }
	// 	// else{
	// 	// 	match = 0;
	// 	// }


	// 	//*match_out = match;

	// 	//dest_tmp = reverseEndian64(header[1].range(15,0));
	// 	//dest = reverseEndian64(header[1].range(15,0));
	// 	//dest = header[1].range(15,8);
	// 	//dest_tmp = dest_tmp >> 16;
	// 	//dest = dest_tmp.range(15,0);
	// 	//dest = (dest >> 8) | (dest << 8);

	// 	//*dest_out = dest;

	// 	//ap_int<64> envlp_packet_data = reverseEndian64(header[0]);
	// 	ap_int<64> envlp_packet_data = header[0];
	// 	int expected_bytes;

	// 	if(envlp_packet_data(31,24) == C_SYNC_ENV_PACKET || envlp_packet_data(31,24) == C_CLR2SND_PACKET
	// 		|| envlp_packet_data(31,24) == C_DATA_TRANSMISSION_DONE || envlp_packet_data(31,24) == C_RECV_ERROR){
	// 		ap_axis_out envlp_out;
	// 		envlp_out.data = envlp_packet_data;
	// 		envlp_out.dest = packetIn.dest;
	// 		envlp_out.last = header_last;
	// 		id = envlp_packet_data(23,16);
	// 		envlp_out.id = id;
	// 		user(3,0) = envlp_packet_data(59,56);
	// 		user(7,4) = ENVLP;
	// 		user(39,8) = 0;
	// 		envlp_out.user = user;
	// 		envlp_out.keep = 0xff;
	// 		stream_out.write(envlp_out);
	// 		expected_bytes = -1;

	// 	}else if(envlp_packet_data(31,24) == C_DATA_PACKET){
	// 		id = envlp_packet_data(23,16);
	// 		user(3,0) = envlp_packet_data(59,56);
	// 		user(7,4) = DATA;
	// 		user(39,8) = 0;
	// 		expected_bytes = envlp_packet_data(47,32);
	// 		dest = envlp_packet_data(15,0); 
	// 	}
	// 	else{
	// 		packetOut.data = 0xffffffffffffffff;
	// 		stream_out.write(packetOut);
	// 	}


	// 	last = packetIn.last;
	// 	while(expected_bytes > 0){
	// 		#pragma HLS PIPELINE
	// 		if(!stream_in.empty()){
	// 			packetIn = stream_in.read();
	// 			if(expected_bytes - 8 <= 0)
	// 				packetOut.last = 1;
	// 			else
	// 				packetOut.last = 0;
	
	// 			ap_uint<8> keep_temp = packetIn.keep;
	// 			packetOut.keep = packetIn.keep;
	
	// 			for(int i = 0 ; i < 8 ;i++){
	// 				if(keep_temp[i] == 1)
	// 					expected_bytes -= 1;
	// 			}
	
	// 			//packetOut.data = reverseEndian64(packetIn.data);
	// 			packetOut.data = packetIn.data;
	// 			packetOut.dest = dest;
	// 			packetOut.id = id;
	// 			packetOut.user = user;
	// 			last = packetIn.last;
	// 			stream_out.write(packetOut);
	// 		}
	// 	}
	// }
}
