#ifndef MPI_H
#define MPI_H

#include "ap_int.h"
#include "ap_cint.h"
#include "hls_stream.h"
#include "ap_utils.h"
//#include "systemc.h"

#define MPI_size 16
#define MPI_rank MODULE_RANK

#define NVECTORS 600
#define NDIMS 10
#define NCLUSTERS 10
#define NITERS 1
#define FLT_MAX 3.40282347e+38


#define DATA_SIZE 8
#define REQUEST_MAX_NUM 512

#define INT 0
#define FLOAT 1

#define DATA 1
#define ENVLP 0

struct stream_packet{

	ap_uint<64> data;
	ap_uint <8> dest;
	ap_uint<1> last;
	ap_uint<8> id;
	ap_uint<40> user;
};

#define TIMEOUT (10*31446541)
//#define TIMEOUT 333


#define C_SYNC_ENV_PACKET 0
#define C_CLR2SND_PACKET 1
#define C_DATA_PACKET 2
#define C_ASYNC_ENV_PACKET 3
#define C_RECV_ERROR 4
#define C_DATA_TRANSMISSION_DONE 5

#define ETH_DATA_FRAM_SIZE 1496

enum MPI_DATA_TYPE{MPI_INT = 4,MPI_FLOAT = 4,MPI_SHORT = 2,MPI_CHAR = 1};
enum MPI_COMM{MPI_COMM_WORLD = 0};
#define MPI_SUCCESS 1


using namespace hls;

struct envelope{
	ap_uint<8> SRC;
	ap_uint<8> PKT_TYPE;
	ap_uint<32> MSG_SIZE;
	ap_uint<8> TAG;
	ap_uint<4> DATA_TYPE;
	ap_uint<4> DATA_OR_ENVLP;
	//the dest is not in data field of packet
	ap_uint<16> DEST;
};


void envelope_to_packet(envelope * envlp, stream_packet * packet){
	//packet[0].data(15,0) = envlp.DEST;
	packet->data(7,0) = envlp->SRC;
	packet->data(15,8) = envlp->PKT_TYPE;
	packet->data(47,16) = envlp->MSG_SIZE;
	packet->data(55,48) = envlp->TAG;
	packet->data(59,56) = envlp->DATA_TYPE;
	packet->data(63,60) = envlp->DATA_OR_ENVLP;
	packet->dest = envlp->DEST;
	packet->id = envlp->SRC;
	packet->last = 1;
}

void packet_to_envelope( stream_packet * packet, envelope * envlp){
	envlp->DEST=packet->dest;
	envlp->SRC=packet->data(7,0);
	envlp->PKT_TYPE=packet->data(15,8);
	envlp->MSG_SIZE=packet->data(47,16);
	envlp->TAG = packet->data(55,48);
	envlp->DATA_TYPE = packet->data(59,56);
	envlp->DATA_TYPE = packet->data(63,60);
}

hls::stream<stream_packet>  stream_out;
hls::stream<stream_packet>  stream_in;


static envelope float_request_array[REQUEST_MAX_NUM];
static envelope int_request_array[REQUEST_MAX_NUM];

static envelope float_clr2snd_array[REQUEST_MAX_NUM];
static envelope int_clr2snd_array[REQUEST_MAX_NUM];


static int int_req_num = 0;
static int float_req_num = 0;

static int int_clr_num = 0;
static int float_clr_num = 0;


int MPI_Send(
		int * buf,
		int count,
		MPI_DATA_TYPE dataType,
		int dest,
		int tag,
		int MPI_Comm,
		int & state_out)
{

//section_1:{
//#pragma HLS protocol fixed
	static enum State {IDLE = 0,CLR2SND_WAIT, DATA_SEND_LOOP} state;

	char * buff_char_ptr = (char *) buf;


	static ap_uint<64> time = 0;  


//	int * int_buf;
//	short * short_buf;
//	float * float_buf;
//	char * char_buf;
//
//
//	if(dataType == MPI_INT){
//		int_buf = (int *) buf;
//	}
//	else if(dataType == MPI_FLOAT){
//		float_buf = (float *) buf;
//	}
//	else if(dataType == MPI_SHORT){
//		short_buf = (short *) buf;
//	}
//	else if(dataType == MPI_CHAR){
//		char_buf = (char *) buf;
//	}
//	else{
//		return -1;
//	}

	static envelope envlp;

	switch(state){
	case IDLE:{
		envlp.SRC = MODULE_RANK;
		envlp.DEST = dest;
		if(dataType == MPI_INT || dataType == MPI_FLOAT){
			envlp.MSG_SIZE = count;
		}
		else if(dataType == MPI_SHORT){
			envlp.MSG_SIZE = count*2;
		}
		else if(dataType == MPI_CHAR){
			envlp.MSG_SIZE = count*4;
		}
		else{
			return -1;
		}
		envlp.PKT_TYPE = C_SYNC_ENV_PACKET;
		envlp.TAG = tag;
		//envlp.not_used_1 = buff_char_ptr[0];
		//if(!stream_out.full()){
			stream_packet pkt_out;
			envelope_to_packet(&envlp,&pkt_out);
			pkt_out.dest = dest; // problem solver
			pkt_out.user(3,0) = INT;
			pkt_out.user(7,4) = ENVLP;

			pkt_out.id = MODULE_RANK;
		//	std::cout <<std::hex<< "pkt0: " << pkt_out[0].data << "    pkt1: " << pkt_out[1].data
		//			<<" dest0: "<<pkt_out[0].dest << "  dest1: " <<pkt_out[1].dest<<std::endl;
			stream_out.write(pkt_out);
			state = CLR2SND_WAIT;
			time = 0;
		//}
	}
	break;
	case CLR2SND_WAIT:{

		for(int i = 0 ; i < int_clr_num ;i++){
			if(int_clr2snd_array[i].PKT_TYPE == C_CLR2SND_PACKET
			&& int_clr2snd_array[i].DEST == MODULE_RANK
			&& int_clr2snd_array[i].SRC == dest){
				envlp = int_clr2snd_array[i];
				state = DATA_SEND_LOOP;
				time = 0;
				int_clr_num--;
				for(int j = i; j < int_clr_num;j++){
					int_clr2snd_array[j] = int_clr2snd_array[j+1];
				}
				return 0;
			}
		}



		ap_uint<1> last;
		stream_packet recv_pkt,useless;
		if(!stream_in.empty()){

			recv_pkt = stream_in.read();
			last = recv_pkt.last;
			while(!last){
				useless = stream_in.read();
				last = useless.last;
			}
	
			// if(recv_pkt.id != dest){
			// 	if(recv_pkt.user == INT){
			// 		envelope temp_diff_src;
			// 		packet_to_envelope(&recv_pkt,&temp_diff_src);
			// 		int_clr2snd_array[int_clr_num] = temp_diff_src;
			// 		int_clr_num++;
			// 		return 0;
			// 	}
			// 	else if(recv_pkt.user == FLOAT){
			// 		envelope temp_diff_src;
			// 		packet_to_envelope(&recv_pkt,&temp_diff_src);
			// 		float_clr2snd_array[float_clr_num] = temp_diff_src;
			// 		float_clr_num++;
			// 		return 0;
			// 	}
			// }
	
			if(recv_pkt.id != dest && recv_pkt.user(7,4) == ENVLP){
				if(recv_pkt.user(3,0) == INT){
					envelope temp_diff_src;
					packet_to_envelope(&recv_pkt,&temp_diff_src);
					if(temp_diff_src.PKT_TYPE == C_SYNC_ENV_PACKET){
						int_request_array[int_req_num] = temp_diff_src;
						int_req_num++;
					}
					else if(temp_diff_src.PKT_TYPE == C_CLR2SND_PACKET){
						int_clr2snd_array[int_clr_num] = temp_diff_src;
						int_clr_num++;
					}
					return 0;
				}
				else if(recv_pkt.user(3,0) == FLOAT){
					envelope temp_diff_src;
					packet_to_envelope(&recv_pkt,&temp_diff_src);
					if(temp_diff_src.PKT_TYPE == C_SYNC_ENV_PACKET){
						float_request_array[float_req_num] = temp_diff_src;
						float_req_num++;
					}
					else if(temp_diff_src.PKT_TYPE == C_CLR2SND_PACKET){
						float_clr2snd_array[float_clr_num] = temp_diff_src;
						float_clr_num++;
					}
					return 0;
				}
			}
	
			// if(recv_pkt.user == FLOAT){
			// 	envelope temp_diff_type;
			// 	packet_to_envelope(&recv_pkt,&temp_diff_type);
			// 	float_clr2snd_array[float_clr_num] = temp_diff_type;
			// 	float_clr_num++;
			// 	return 0;
			// }
	
			if(recv_pkt.user(3,0) == FLOAT && recv_pkt.user(7,4) == ENVLP){
				envelope temp_diff_type;
				packet_to_envelope(&recv_pkt,&temp_diff_type);
				if(temp_diff_type.PKT_TYPE == C_SYNC_ENV_PACKET){
					float_request_array[float_req_num] = temp_diff_type;
					float_req_num++;
				}
				else if(temp_diff_type.PKT_TYPE == C_CLR2SND_PACKET){
					float_clr2snd_array[float_clr_num] = temp_diff_type;
					float_clr_num++;
				}
				return 0;
				//state_out = req_num;
			}
			
	
			envelope temp;
			packet_to_envelope(&recv_pkt,&temp);
			if(temp.PKT_TYPE == C_CLR2SND_PACKET && temp.DEST == MODULE_RANK && temp.SRC == dest){
				state = DATA_SEND_LOOP;
				time = 0;
			}
		}
		else{
			time++;
			if(time == TIMEOUT){
				state = IDLE;
				time = 0;
				return 0;
			}
		}
	}
	break;
	case DATA_SEND_LOOP: {
		int seq_num = 0;
		int i = 0;
		bool seq_inc = 0;
		bool transmission_done = 0;
		bool test = 0;
send:
		for(i ; i < count*dataType ; i+= DATA_SIZE ){
			stream_packet to_send_data;
			stream_packet recv_data,useless;
			ap_uint<1> last;
			if(!stream_in.empty()){ // how about envlp!!!
				recv_data = stream_in.read();
				last = recv_data.last;
				while(!last){
					useless = stream_in.read();
					last = useless.last;
				}
				envelope temp;
				packet_to_envelope(&recv_data,&temp);
				if(temp.PKT_TYPE == C_RECV_ERROR && recv_data.id == dest){
					i = temp.MSG_SIZE*(ETH_DATA_FRAM_SIZE-8);
					//TODO
					//i = 15;
					seq_num = temp.MSG_SIZE;
					state_out = 12;
					continue;
				}
				else if(temp.PKT_TYPE == C_DATA_TRANSMISSION_DONE && recv_data.id == dest){
					transmission_done = 1;
				}
				else if(recv_data.id != dest && recv_data.user(7,4) == ENVLP){
					if(recv_data.user(3,0) == INT){
						envelope temp_diff_src;
						packet_to_envelope(&recv_data,&temp_diff_src);
						if(temp_diff_src.PKT_TYPE == C_SYNC_ENV_PACKET){
							int_request_array[int_req_num] = temp_diff_src;
							int_req_num++;
						}
						else if(temp_diff_src.PKT_TYPE == C_CLR2SND_PACKET){
							int_clr2snd_array[int_clr_num] = temp_diff_src;
							int_clr_num++;
						}
					}
					else if(recv_data.user(3,0) == FLOAT ){
						envelope temp_diff_src;
						packet_to_envelope(&recv_data,&temp_diff_src);
						if(temp_diff_src.PKT_TYPE == C_SYNC_ENV_PACKET){
							float_request_array[float_req_num] = temp_diff_src;
							float_req_num++;
						}
						else if(temp_diff_src.PKT_TYPE == C_CLR2SND_PACKET){
							float_clr2snd_array[float_clr_num] = temp_diff_src;
							float_clr_num++;
						}
					}
				}
				if(recv_data.user(3,0) == FLOAT && recv_data.user(7,4) == ENVLP){
					envelope temp_diff_type;
					packet_to_envelope(&recv_data,&temp_diff_type);
					if(temp_diff_type.PKT_TYPE == C_SYNC_ENV_PACKET){
						int_request_array[int_req_num] = temp_diff_type;
						int_req_num++;
					}
					else if(temp_diff_type.PKT_TYPE == C_CLR2SND_PACKET){
						int_clr2snd_array[int_clr_num] = temp_diff_type;
						int_clr_num++;
					}
				}
			}
			for(int j = 0 ; j < DATA_SIZE ; j++){
				to_send_data.data(((j+1)*8)-1,j*8) = buff_char_ptr[(i+j)];
			}
			to_send_data.dest = dest;
			if((i+DATA_SIZE) >= count*dataType){
				to_send_data.last = 1;
			}
			else if (((i+DATA_SIZE) % (ETH_DATA_FRAM_SIZE-8)) == 0){
				to_send_data.last = 1;
				seq_inc = 1;
			}
			else
				to_send_data.last = 0;

			to_send_data.user(3,0) = INT;
			to_send_data.user(7,4) = DATA;
			to_send_data.user(39,8) = seq_num;

			to_send_data.id = MODULE_RANK;
			if(seq_num == 2 && test){
				test = 1;
			}
			else if(seq_num == 3){
				test = 0;
				stream_out.write(to_send_data);
			}
			else
				stream_out.write(to_send_data);

			if(seq_inc){
				seq_num++;
				seq_inc = 0;
			}
		}	

		while(i >= dataType*count){
			stream_packet recv_data,useless;
			ap_uint<1> last;
			recv_data = stream_in.read();
			last = recv_data.last;
			while(!last){
				useless = stream_in.read();
				last = useless.last;
			}
			envelope temp;
			packet_to_envelope(&recv_data,&temp);
			if(temp.PKT_TYPE == C_RECV_ERROR && recv_data.id == dest){
				i = temp.MSG_SIZE*(ETH_DATA_FRAM_SIZE-8)+1; //??? + or not?
				seq_num = temp.MSG_SIZE;
				state_out = 12;
				goto send;
			}
			else if(temp.PKT_TYPE == C_DATA_TRANSMISSION_DONE && recv_data.id == dest){
				state = IDLE;
				return 1;
			}
			else if(recv_data.id != dest && recv_data.user(7,4) == ENVLP){
				if(recv_data.user(3,0) == INT){
					envelope temp_diff_src;
					packet_to_envelope(&recv_data,&temp_diff_src);
					if(temp_diff_src.PKT_TYPE == C_SYNC_ENV_PACKET){
						int_request_array[int_req_num] = temp_diff_src;
						int_req_num++;
					}
					else if(temp_diff_src.PKT_TYPE == C_CLR2SND_PACKET){
						int_clr2snd_array[int_clr_num] = temp_diff_src;
						int_clr_num++;
					}
				}
				else if(recv_data.user(3,0) == FLOAT ){
					envelope temp_diff_src;
					packet_to_envelope(&recv_data,&temp_diff_src);
					if(temp_diff_src.PKT_TYPE == C_SYNC_ENV_PACKET){
						float_request_array[float_req_num] = temp_diff_src;
						float_req_num++;
					}
					else if(temp_diff_src.PKT_TYPE == C_CLR2SND_PACKET){
						float_clr2snd_array[float_clr_num] = temp_diff_src;
						float_clr_num++;
					}
				}
			}
			if(recv_data.user(3,0) == FLOAT && recv_data.user(7,4) == ENVLP){
				envelope temp_diff_type;
				packet_to_envelope(&recv_data,&temp_diff_type);
				if(temp_diff_type.PKT_TYPE == C_SYNC_ENV_PACKET){
					int_request_array[int_req_num] = temp_diff_type;
					int_req_num++;
				}
				else if(temp_diff_type.PKT_TYPE == C_CLR2SND_PACKET){
					int_clr2snd_array[int_clr_num] = temp_diff_type;
					int_clr_num++;
				}
			}
		}
		// //while(!transmission_done);	
		// state = IDLE;
		// //state_out = state;
		// return 1;
	}
	break;
	}
	//state_out = state;
	return 0;
//}
}
int MPI_Send(
		float * buf,
		int count,
		MPI_DATA_TYPE dataType,
		int dest,
		int tag,
		int MPI_Comm,
		int & state_out)
{




//section_1:{
//#pragma HLS protocol fixed
	static enum State {IDLE = 0,CLR2SND_WAIT, DATA_SEND_LOOP,SEND_DATA_FAILURE} state;
	static ap_uint<64> time = 0;  


	// static envelope clr2snd_array[REQUEST_MAX_NUM];
	// static int clr2snd_num = 0;


//	char * buff_char_ptr = (char *) buf;

//	int * int_buf;
//	short * short_buf;
//	float * float_buf;
//	char * char_buf;
//
//
//	if(dataType == MPI_INT){
//		int_buf = (int *) buf;
//	}
//	else if(dataType == MPI_FLOAT){
//		float_buf = (float *) buf;
//	}
//	else if(dataType == MPI_SHORT){
//		short_buf = (short *) buf;
//	}
//	else if(dataType == MPI_CHAR){
//		char_buf = (char *) buf;
//	}
//	else{
//		return -1;
//	}
	static bool envlp_lost_test = 0;
	static envelope envlp;

	switch(state){
	case IDLE:{
		envlp.SRC = MODULE_RANK;
		envlp.DEST = dest;
		if(dataType == MPI_INT || dataType == MPI_FLOAT){
			envlp.MSG_SIZE = count;
		}
		else if(dataType == MPI_SHORT){
			envlp.MSG_SIZE = count*2;
		}
		else if(dataType == MPI_CHAR){
			envlp.MSG_SIZE = count*4;
		}
		else{
			return -1;
		}
		envlp.PKT_TYPE = C_SYNC_ENV_PACKET;
		envlp.TAG = tag;
		//envlp.not_used_1 = buff_char_ptr[0];
		//if(!stream_out.full()){
			stream_packet pkt_out;
			envelope_to_packet(&envlp,&pkt_out);
			pkt_out.dest = dest; // problem solver
			pkt_out.user(3,0) = FLOAT;
			pkt_out.user(7,4) = ENVLP;
			pkt_out.id = MODULE_RANK;
		//	std::cout <<std::hex<< "pkt0: " << pkt_out[0].data << "    pkt1: " << pkt_out[1].data
		//			<<" dest0: "<<pkt_out[0].dest << "  dest1: " <<pkt_out[1].dest<<std::endl;
			if(envlp_lost_test){
				envlp_lost_test = 0;
			}
			else
				stream_out.write(pkt_out);
			state = CLR2SND_WAIT;
			time = 0;
		//}
	}
	break;
	case CLR2SND_WAIT:{

		for(int i = 0 ; i < float_clr_num ;i++){
			if(float_clr2snd_array[i].PKT_TYPE == C_CLR2SND_PACKET
			&& float_clr2snd_array[i].DEST == MODULE_RANK
			&& float_clr2snd_array[i].SRC == dest){
				envlp = float_clr2snd_array[i];
				state = DATA_SEND_LOOP;
				time = 0;
				float_clr_num--;
				for(int j = i; j < float_clr_num;j++){
					float_clr2snd_array[j] = float_clr2snd_array[j+1];
				}
				return 0;
			}
		}



		ap_uint<1> last;
		stream_packet recv_pkt,useless;
		if(!stream_in.empty()){

			recv_pkt = stream_in.read();
			last = recv_pkt.last;
			while(!last){
				useless = stream_in.read();
				last = useless.last;
			}
	
			// if(recv_pkt.id != dest){
			// 	if(recv_pkt.user == INT){
			// 		envelope temp_diff_src;
			// 		packet_to_envelope(&recv_pkt,&temp_diff_src);
			// 		int_clr2snd_array[int_clr_num] = temp_diff_src;
			// 		int_clr_num++;
			// 		return 0;
			// 	}
			// 	else if(recv_pkt.user == FLOAT){
			// 		envelope temp_diff_src;
			// 		packet_to_envelope(&recv_pkt,&temp_diff_src);
			// 		float_clr2snd_array[float_clr_num] = temp_diff_src;
			// 		float_clr_num++;
			// 		return 0;
			// 	}
			// }
	
			// if(recv_pkt.user == INT){
			// 	envelope temp_diff_type;
			// 	packet_to_envelope(&recv_pkt,&temp_diff_type);
			// 	int_clr2snd_array[int_clr_num] = temp_diff_type;
			// 	int_clr_num++;
			// 	return 0;
			// }
	
			if(recv_pkt.id != dest && recv_pkt.user(7,4) == ENVLP){
				if(recv_pkt.user(3,0) == INT){
					envelope temp_diff_src;
					packet_to_envelope(&recv_pkt,&temp_diff_src);
					if(temp_diff_src.PKT_TYPE == C_SYNC_ENV_PACKET){
						int_request_array[int_req_num] = temp_diff_src;
						int_req_num++;
					}
					else if(temp_diff_src.PKT_TYPE == C_CLR2SND_PACKET){
						int_clr2snd_array[int_clr_num] = temp_diff_src;
						int_clr_num++;
					}
					return 0;
				}
				else if(recv_pkt.user(3,0) == FLOAT){
					envelope temp_diff_src;
					packet_to_envelope(&recv_pkt,&temp_diff_src);
					if(temp_diff_src.PKT_TYPE == C_SYNC_ENV_PACKET){
						float_request_array[float_req_num] = temp_diff_src;
						float_req_num++;
					}
					else if(temp_diff_src.PKT_TYPE == C_CLR2SND_PACKET){
						float_clr2snd_array[float_clr_num] = temp_diff_src;
						float_clr_num++;
					}
					return 0;
				}
			}
	
			if(recv_pkt.user(3,0) == INT  && recv_pkt.user(7,4) == ENVLP){
				envelope temp_diff_type;
				packet_to_envelope(&recv_pkt,&temp_diff_type);
				if(temp_diff_type.PKT_TYPE == C_SYNC_ENV_PACKET){
					int_request_array[int_req_num] = temp_diff_type;
					int_req_num++;
				}
				else if(temp_diff_type.PKT_TYPE == C_CLR2SND_PACKET){
					int_clr2snd_array[int_clr_num] = temp_diff_type;
					int_clr_num++;
				}
				return 0;
				//state_out = req_num;
			}
	
	
			envelope temp;
			packet_to_envelope(&recv_pkt,&temp);
			if(temp.PKT_TYPE == C_CLR2SND_PACKET && temp.DEST == MODULE_RANK && temp.SRC == dest){
				state = DATA_SEND_LOOP;
				time = 0;
			}
		}
		else{
			time++;
			if(time == TIMEOUT){
				state = IDLE;
				time = 0;
				return 0;
			}
		}
	}
	break;
	case DATA_SEND_LOOP: {
		int i = 1;
		int seq_num = 0;
		int old_seq_num = 0;
		bool seq_inc = 0;
		bool transmission_done = 0;
		bool failed = 0;
		state_out = 9;
		bool for_finished= 0;
		bool error_is_seen = 0;
		
		//state_out = 0;
		bool test = 0;
send:
		for(i ; i <= (count/2)+1 ; i++){
			ap_uint <1> last = 0;
			stream_packet to_send_data;
			stream_packet recv_data,useless;
			state_out = 10;
			if(!stream_in.empty()){
				recv_data = stream_in.read();
				last = recv_data.last;
				while(!last){
					useless = stream_in.read();
					last = useless.last;
				}

				envelope temp;
				state_out = 11;
				packet_to_envelope(&recv_data,&temp);
				// if(temp.PKT_TYPE == C_RECV_ERROR && recv_data.id == dest){
				if(temp.PKT_TYPE == C_RECV_ERROR && recv_data.id == dest){
					i = (temp.MSG_SIZE*((ETH_DATA_FRAM_SIZE/4)-2)/2);
					error_is_seen = 1;
					//i = 15;
					old_seq_num = seq_num;
					seq_num = temp.MSG_SIZE;
					state_out = 12;
					continue;
					//return 0;
				}
				else if(temp.PKT_TYPE == C_DATA_TRANSMISSION_DONE && recv_data.id == dest){
					transmission_done = 1;
					//state_out = 1;
				}
				else if(recv_data.id != dest && recv_data.user(7,4) == ENVLP){
					if(recv_data.user(3,0) == INT){
						envelope temp_diff_src;
						packet_to_envelope(&recv_data,&temp_diff_src);
						if(temp_diff_src.PKT_TYPE == C_SYNC_ENV_PACKET){
							int_request_array[int_req_num] = temp_diff_src;
							int_req_num++;
						}
						else if(temp_diff_src.PKT_TYPE == C_CLR2SND_PACKET){
							int_clr2snd_array[int_clr_num] = temp_diff_src;
							int_clr_num++;
						}
					}
					else if(recv_data.user(3,0) == FLOAT){
						envelope temp_diff_src;
						packet_to_envelope(&recv_data,&temp_diff_src);
						if(temp_diff_src.PKT_TYPE == C_SYNC_ENV_PACKET){
							float_request_array[float_req_num] = temp_diff_src;
							float_req_num++;
						}
						else if(temp_diff_src.PKT_TYPE == C_CLR2SND_PACKET){
							float_clr2snd_array[float_clr_num] = temp_diff_src;
							float_clr_num++;
						}
					}
				}
				if(recv_data.user(3,0) == INT && recv_data.user(7,4) == ENVLP){
					envelope temp_diff_type;
					packet_to_envelope(&recv_data,&temp_diff_type);
					if(temp_diff_type.PKT_TYPE == C_SYNC_ENV_PACKET){
						int_request_array[int_req_num] = temp_diff_type;
						int_req_num++;
					}
					else if(temp_diff_type.PKT_TYPE == C_CLR2SND_PACKET){
						int_clr2snd_array[int_clr_num] = temp_diff_type;
						int_clr_num++;
					}
				}
			}

			if(error_is_seen){
				//send a garbage packet with high last
				stream_packet garbage;
				error_is_seen = 0;
				garbage.data = 0;
				to_send_data.last = 1;
				to_send_data.id = MODULE_RANK;
				to_send_data.user(3,0) = FLOAT;
				to_send_data.user(7,4) = DATA;
				to_send_data.user(39,8) = old_seq_num;
				stream_out.write(to_send_data);
				i--;
				continue;
			}

			state_out = 13;
			if(((i-1)*2) >= count){
				for_finished = 1;
				break;
			}

			float temp1= buf[((i-1)*2)+0];
			void * vtemp1_p= &temp1;
			int * itemp1_p = (int *)vtemp1_p;
			int itemp1 = *itemp1_p;
			to_send_data.data(((0+1)*32)-1,0*32) = itemp1;
			

			if(((i-1)*2)+1 >= count){
				to_send_data.data(((1+1)*32)-1,1*32) = 0;
				to_send_data.last = 1;
				to_send_data.id = MODULE_RANK;
				to_send_data.user(3,0) = FLOAT;
				to_send_data.user(7,4) = DATA;
				to_send_data.id = MODULE_RANK;
				to_send_data.user(39,8) = seq_num;
				stream_out.write(to_send_data);
				break;
			}
			float temp2= buf[((i-1)*2)+1];
			void * vtemp2_p= &temp2;
			int * itemp2_p = (int *)vtemp2_p;
			int itemp2 = *itemp2_p;
			to_send_data.data(((1+1)*32)-1,1*32) = itemp2;

			to_send_data.dest = dest;
			//((i*2)/((ETH_DATA_FRAM_SIZE/4)-2) != 0 &&
			if((((i-1)*2)+2) >= count){
				to_send_data.last = 1;
			}
			else if((((i*2)) % ((ETH_DATA_FRAM_SIZE/4)-2) == 0)){
				seq_inc = 1;
				to_send_data.last = 1;
			}
			else
				to_send_data.last = 0;

			to_send_data.id = MODULE_RANK;
			to_send_data.user(3,0) = FLOAT;
			to_send_data.user(7,4) = DATA;
			to_send_data.id = MODULE_RANK;
			to_send_data.user(39,8) = seq_num;
			
			if(seq_num == 2 && test){
				test = 1;
			}
			else if(seq_num == 3){
				test = 0;
				stream_out.write(to_send_data);
			}
			else
				stream_out.write(to_send_data);


			if(seq_inc){
				seq_num++;
				seq_inc = 0;
			}
		}
		while(for_finished){
			stream_packet recv_data,useless;
			ap_uint <1> last = 0;
			recv_data = stream_in.read();
			last = recv_data.last;
			while(!last){
				useless = stream_in.read();
				last = useless.last;
			}
			envelope temp;
			state_out = 15;
			packet_to_envelope(&recv_data,&temp);
			// if(temp.PKT_TYPE == C_RECV_ERROR && recv_data.id == dest){
			if(temp.PKT_TYPE == C_RECV_ERROR && recv_data.id == dest){
				i = (temp.MSG_SIZE*((ETH_DATA_FRAM_SIZE/4)-2)/2)+1; // ??? +1 or not?
				//i = 15;
				seq_num = temp.MSG_SIZE;
				state_out = 16;
				goto send;
				//return 0;
			}
			else if(temp.PKT_TYPE == C_DATA_TRANSMISSION_DONE && recv_data.id == dest){
				state = IDLE;
				return 1;
				//state_out = 1;
			}
			else if(recv_data.id != dest && recv_data.user(7,4) == ENVLP){
				if(recv_data.user(3,0) == INT){
					envelope temp_diff_src;
					packet_to_envelope(&recv_data,&temp_diff_src);
					if(temp_diff_src.PKT_TYPE == C_SYNC_ENV_PACKET){
						int_request_array[int_req_num] = temp_diff_src;
						int_req_num++;
					}
					else if(temp_diff_src.PKT_TYPE == C_CLR2SND_PACKET){
						int_clr2snd_array[int_clr_num] = temp_diff_src;
						int_clr_num++;
					}
				}
				else if(recv_data.user(3,0) == FLOAT){
					envelope temp_diff_src;
					packet_to_envelope(&recv_data,&temp_diff_src);
					if(temp_diff_src.PKT_TYPE == C_SYNC_ENV_PACKET){
						float_request_array[float_req_num] = temp_diff_src;
						float_req_num++;
					}
					else if(temp_diff_src.PKT_TYPE == C_CLR2SND_PACKET){
						float_clr2snd_array[float_clr_num] = temp_diff_src;
						float_clr_num++;
					}
				}
			}
			if(recv_data.user(3,0) == INT && recv_data.user(7,4) == ENVLP){
				envelope temp_diff_type;
				packet_to_envelope(&recv_data,&temp_diff_type);
				if(temp_diff_type.PKT_TYPE == C_SYNC_ENV_PACKET){
					int_request_array[int_req_num] = temp_diff_type;
					int_req_num++;
				}
				else if(temp_diff_type.PKT_TYPE == C_CLR2SND_PACKET){
					int_clr2snd_array[int_clr_num] = temp_diff_type;
					int_clr_num++;
				}
			}
		}
	}
	break;
	}
	//state_out = state;
	return 0;
//}
}

int MPI_Recv_i(
		int * buf,
		int count,
		MPI_DATA_TYPE dataType,
		int source,
		int tag,
		int MPI_Comm,
		int & state_out
		){
//section_2:{
//#pragma HLS protocol fixed

	


	static enum State {IDLE = 0,CLR2SND_SEND, DATA_RECV_LOOP} state;


	char * buff_char_ptr = (char *) buf;
	static ap_uint<64> time = 0;  

	//static int i = 0;
	

//	int * int_buf;
//	short * short_buf;
//	float * float_buf;
//	char * char_buf;
//
//	if(dataType == MPI_INT){
//		int_buf = (int *) buf;
//	}
//	else if(dataType == MPI_FLOAT){
//		float_buf = (float *) buf;
//	}
//	else if(dataType == MPI_SHORT){
//		short_buf = (short *) buf;
//	}
//	else if(dataType == MPI_CHAR){
//		char_buf = (char *) buf;
//	}
//	else{
//		return -1;
//	}

	static envelope envlp;

	switch(state){
	case IDLE:{
		//if(!stream_in.empty()){
		//state_out = state;
		for(int i = 0 ; i < int_req_num ;i++){
			if(int_request_array[i].PKT_TYPE == C_SYNC_ENV_PACKET
			&& int_request_array[i].DEST == MODULE_RANK
			&& int_request_array[i].SRC == source){
				envlp = int_request_array[i];
				state = CLR2SND_SEND;
				int_req_num--;
				for(int j = i; j < int_req_num;j++){
					int_request_array[j] = int_request_array[j+1];
				}
				return 0;
			}
		}


		ap_uint<1> last;
		stream_packet recv_pkt,useless;
		recv_pkt = stream_in.read();
		last = recv_pkt.last;

		while(!last){
			useless = stream_in.read();
			last = useless.last;
		}

		if(recv_pkt.id != source &&  recv_pkt.user(7,4) == ENVLP){
			if(recv_pkt.user(3,0) == INT){
				envelope temp_diff_src;
				packet_to_envelope(&recv_pkt,&temp_diff_src);
				if(temp_diff_src.PKT_TYPE == C_SYNC_ENV_PACKET){
					int_request_array[int_req_num] = temp_diff_src;
					int_req_num++;
				}
				else if(temp_diff_src.PKT_TYPE == C_CLR2SND_PACKET){
					int_clr2snd_array[int_clr_num] = temp_diff_src;
					int_clr_num++;
				}
				return 0;
			}
			else if(recv_pkt.user(3,0) == FLOAT){
				envelope temp_diff_src;
				packet_to_envelope(&recv_pkt,&temp_diff_src);
				if(temp_diff_src.PKT_TYPE == C_SYNC_ENV_PACKET){
					float_request_array[float_req_num] = temp_diff_src;
					float_req_num++;
				}
				else if(temp_diff_src.PKT_TYPE == C_CLR2SND_PACKET){
					float_clr2snd_array[float_clr_num] = temp_diff_src;
					float_clr_num++;
				}
				return 0;
			}
		}


		if(recv_pkt.user(3,0) == FLOAT && recv_pkt.user(7,4) == ENVLP){
			envelope temp_diff_type;
			packet_to_envelope(&recv_pkt,&temp_diff_type);
			if(temp_diff_type.PKT_TYPE == C_SYNC_ENV_PACKET){
				float_request_array[float_req_num] = temp_diff_type;
				float_req_num++;
			}
			else if(temp_diff_type.PKT_TYPE == C_CLR2SND_PACKET){
				float_clr2snd_array[float_clr_num] = temp_diff_type;
				float_clr_num++;
			}
			return 0;
			//state_out = req_num;
		}
		
		packet_to_envelope(&recv_pkt,&envlp);
		if(envlp.PKT_TYPE == C_SYNC_ENV_PACKET
		&& envlp.DEST == MODULE_RANK
		&& envlp.SRC == source){
			state = CLR2SND_SEND;
		}
		//module_rank = MODULE_RANK && recv_pkt.dest;
		//packet_type = envlp.PKT_TYPE;

		//}
	}
	break;
	case CLR2SND_SEND:{
		//if(!stream_out.full()){
			envelope clr2snd;
			clr2snd.DEST = envlp.SRC;
			clr2snd.SRC = envlp.DEST;
			clr2snd.PKT_TYPE = C_CLR2SND_PACKET;
			clr2snd.MSG_SIZE = envlp.MSG_SIZE;

			stream_packet pkt_out;
			envelope_to_packet(&clr2snd,&pkt_out);
			pkt_out.dest = envlp.SRC;
			pkt_out.user(3,0) = INT;
			pkt_out.user(7,4) = ENVLP;
			pkt_out.id = MODULE_RANK;
			stream_out.write(pkt_out);
			state = DATA_RECV_LOOP;
			time = 0;
		//}
	}
	break;
	case DATA_RECV_LOOP: { // count or message size?
		stream_packet recv_data,useless;
		ap_uint<1> last;
		int seq_num = 0;
		ap_uint<1> test  = 0;
		ap_uint<1> is_error_sent = 0;
		ap_uint<1> data_is_seen = 0;
		for(int i = 0 ; i < count*dataType ; i+= DATA_SIZE ){
			if(!stream_in.empty()){
				recv_data = stream_in.read();
				if(recv_data.user(7,4) == DATA){
					data_is_seen = 1;
				}
				if(recv_data.user(39,8) != seq_num && recv_data.user(7,4) == DATA){
					envelope error;
					error.DEST = envlp.SRC;
					error.SRC = envlp.DEST;
					error.PKT_TYPE = C_RECV_ERROR;
					error.MSG_SIZE = seq_num;
			
					stream_packet pkt_out;
					envelope_to_packet(&error,&pkt_out);
					pkt_out.dest = envlp.SRC;
					pkt_out.user(3,0) = INT;
					pkt_out.user(7,4) = ENVLP;
					pkt_out.user(39,8) = 0;
					pkt_out.last = 1;
					pkt_out.id = MODULE_RANK;
					if(!is_error_sent){
						is_error_sent = 1;
						stream_out.write(pkt_out);
					}
					i-=DATA_SIZE;
					continue;
				}
				is_error_sent = 0;
				if(recv_data.last && recv_data.user(7,4) == DATA){
					seq_num++;
					//comment this
					if(seq_num == 3 && test){
						test = 0;
						seq_num--;
					}
				}
				last = recv_data.last;
				if(recv_data.id != source && recv_data.user(7,4) == ENVLP){
					if(recv_data.user(3,0) == INT){
						envelope temp_diff_src;
						packet_to_envelope(&recv_data,&temp_diff_src);
						if(temp_diff_src.PKT_TYPE == C_SYNC_ENV_PACKET){
							int_request_array[int_req_num] = temp_diff_src;
							int_req_num++;
						}
						else if(temp_diff_src.PKT_TYPE == C_CLR2SND_PACKET){
							int_clr2snd_array[int_clr_num] = temp_diff_src;
							int_clr_num++;
						}
						i-=DATA_SIZE;
						continue;
					}
					else if(recv_data.user(3,0) == FLOAT){
						envelope temp_diff_src;
						packet_to_envelope(&recv_data,&temp_diff_src);
						if(temp_diff_src.PKT_TYPE == C_SYNC_ENV_PACKET){
							float_request_array[float_req_num] = temp_diff_src;
							float_req_num++;
						}
						else if(temp_diff_src.PKT_TYPE == C_CLR2SND_PACKET){
							float_clr2snd_array[float_clr_num] = temp_diff_src;
							float_clr_num++;
						}
						i-=DATA_SIZE;
						continue;
					}
				}
	
				if(recv_data.user(3,0) == FLOAT && recv_data.user(7,4) == ENVLP){
					envelope temp_diff_type;
					packet_to_envelope(&recv_data,&temp_diff_type);
					if(temp_diff_type.PKT_TYPE == C_SYNC_ENV_PACKET){
						float_request_array[float_req_num] = temp_diff_type;
						float_req_num++;
					}
					else if(temp_diff_type.PKT_TYPE == C_CLR2SND_PACKET){
						float_clr2snd_array[float_clr_num] = temp_diff_type;
						float_clr_num++;
					}
					i-=DATA_SIZE;
					continue;
				}
	
				for(int j = 0 ; j < DATA_SIZE ; j++){
					buff_char_ptr[(i*DATA_SIZE)+j] = recv_data.data(((j+1)*8)-1,j*8);
				}
			}
			else{
				time++;
				i-=DATA_SIZE;
				if(time == TIMEOUT && !data_is_seen){
					time = 0;
					state = CLR2SND_SEND;
					return 0;
				}
			}
		}
		while(!last){
			useless = stream_in.read();
			last = useless.last;
		}
		state = IDLE;
		time = 0;
		envelope error;
		error.DEST = envlp.SRC;
		error.SRC = envlp.DEST;
		error.PKT_TYPE = C_DATA_TRANSMISSION_DONE;
		error.MSG_SIZE = seq_num;
		stream_packet pkt_out;
		envelope_to_packet(&error,&pkt_out);
		pkt_out.dest = envlp.SRC;
		pkt_out.user(3,0) = INT;
		pkt_out.user(7,4) = ENVLP;
		pkt_out.user(39,8) = 0;
		pkt_out.last = 1;
		pkt_out.id = MODULE_RANK;
		stream_out.write(pkt_out);
		return 1;
	}
	break;
	}
	//ap_wait();
	return 0;
//}
}
int MPI_Recv_f(
		float * buf,
		int count,
		MPI_DATA_TYPE dataType,
		int source,
		int tag,
		int MPI_Comm,
		int & state_out
		){
//section_2:{
//#pragma HLS protocol fixed



	static enum State {IDLE = 0,CLR2SND_SEND, DATA_RECV_LOOP} state;
	static ap_uint<64> time = 0;  


	//static int i = 0;

//	int * int_buf;
//	short * short_buf;
//	float * float_buf;
//	char * char_buf;
//
//	if(dataType == MPI_INT){
//		int_buf = (int *) buf;
//	}
//	else if(dataType == MPI_FLOAT){
//		float_buf = (float *) buf;
//	}
//	else if(dataType == MPI_SHORT){
//		short_buf = (short *) buf;
//	}
//	else if(dataType == MPI_CHAR){
//		char_buf = (char *) buf;
//	}
//	else{
//		return -1;
//	}


	static envelope envlp;

	switch(state){
	case IDLE:{

		// searching the buffer to see if the envelope has already received
		state_out = state;
		for(int i = 0 ; i < float_req_num ;i++){
			if(float_request_array[i].PKT_TYPE == C_SYNC_ENV_PACKET
			&& float_request_array[i].DEST == MODULE_RANK
			&& float_request_array[i].SRC == source){
				envlp = float_request_array[i];
				state = CLR2SND_SEND;
				float_req_num--;
				for(int j = i; j < float_req_num;j++){
					float_request_array[j] = float_request_array[j+1];
				}
				return 0;
			}
		}

		// if not receive another packet
		ap_uint<1> last;
		stream_packet recv_pkt,useless;
		recv_pkt = stream_in.read();
		last = recv_pkt.last;

		// wait for it to be finished
		while(!last){
			useless = stream_in.read();
			last = useless.last;
		}

		// if the received packet is desired envelope we go to next step 
		packet_to_envelope(&recv_pkt,&envlp);
		if(envlp.PKT_TYPE == C_SYNC_ENV_PACKET
		&& envlp.DEST == MODULE_RANK
		&& envlp.SRC == source){
			state = CLR2SND_SEND;
		}
		return 0;

		// if not we need to put it in its right buffer
		// what if we receive data! Is it possible?
		if(recv_pkt.user(7,4) == ENVLP){
			if(recv_pkt.user(3,0) == INT){
				envelope temp_diff_src_or_type;
				packet_to_envelope(&recv_pkt,&temp_diff_src_or_type);
				if(temp_diff_src_or_type.PKT_TYPE == C_SYNC_ENV_PACKET){
					for(int i = 0 ; i < int_req_num ;i++){
						if(int_request_array[i].SRC == temp_diff_src_or_type.SRC &&
						int_request_array[i].DEST == temp_diff_src_or_type.DEST &&
						int_request_array[i].PKT_TYPE == temp_diff_src_or_type.PKT_TYPE &&
						int_request_array[i].MSG_SIZE == temp_diff_src_or_type.MSG_SIZE &&
						int_request_array[i].TAG == temp_diff_src_or_type.TAG &&
						int_request_array[i].DATA_TYPE == temp_diff_src_or_type.DATA_TYPE)
							return 0;
					}
					int_request_array[int_req_num] = temp_diff_src_or_type;
					int_req_num++;
				}
				else if(temp_diff_src_or_type.PKT_TYPE == C_CLR2SND_PACKET){
					for(int i = 0 ; i < int_clr_num ;i++){
						if(int_clr2snd_array[i].SRC == temp_diff_src_or_type.SRC &&
						int_clr2snd_array[i].DEST == temp_diff_src_or_type.DEST &&
						int_clr2snd_array[i].PKT_TYPE == temp_diff_src_or_type.PKT_TYPE &&
						int_clr2snd_array[i].MSG_SIZE == temp_diff_src_or_type.MSG_SIZE &&
						int_clr2snd_array[i].TAG == temp_diff_src_or_type.TAG &&
						int_clr2snd_array[i].DATA_TYPE == temp_diff_src_or_type.DATA_TYPE)
							return 0;
					}
					int_clr2snd_array[int_clr_num] = temp_diff_src_or_type;
					int_clr_num++;
				}
				return 0;
			}
			else if(recv_pkt.user(3,0) == FLOAT){
				envelope temp_diff_src_or_type;
				packet_to_envelope(&recv_pkt,&temp_diff_src_or_type);
				if(temp_diff_src_or_type.PKT_TYPE == C_SYNC_ENV_PACKET){
					for(int i = 0 ; i < float_req_num ;i++){
						if(float_request_array[i].SRC == temp_diff_src_or_type.SRC &&
						float_request_array[i].DEST == temp_diff_src_or_type.DEST &&
						float_request_array[i].PKT_TYPE == temp_diff_src_or_type.PKT_TYPE &&
						float_request_array[i].MSG_SIZE == temp_diff_src_or_type.MSG_SIZE &&
						float_request_array[i].TAG == temp_diff_src_or_type.TAG &&
						float_request_array[i].DATA_TYPE == temp_diff_src_or_type.DATA_TYPE)
							return 0;
					}
					float_request_array[float_req_num] = temp_diff_src_or_type;
					float_req_num++;
				}
				else if(temp_diff_src_or_type.PKT_TYPE == C_CLR2SND_PACKET){
					for(int i = 0 ; i < float_clr_num ;i++){
						if(float_clr2snd_array[i].SRC == temp_diff_src_or_type.SRC &&
						float_clr2snd_array[i].DEST == temp_diff_src_or_type.DEST &&
						float_clr2snd_array[i].PKT_TYPE == temp_diff_src_or_type.PKT_TYPE &&
						float_clr2snd_array[i].MSG_SIZE == temp_diff_src_or_type.MSG_SIZE &&
						float_clr2snd_array[i].TAG == temp_diff_src_or_type.TAG &&
						float_clr2snd_array[i].DATA_TYPE == temp_diff_src_or_type.DATA_TYPE)
							return 0;
					}
					float_clr2snd_array[float_clr_num] = temp_diff_src_or_type;
					float_clr_num++;
				}
				return 0;
			}
		}
	}
	break;
	case CLR2SND_SEND:{
		//if(!stream_out.full()){
			envelope clr2snd;
			clr2snd.DEST = envlp.SRC;
			clr2snd.SRC = envlp.DEST;
			clr2snd.PKT_TYPE = C_CLR2SND_PACKET;
			clr2snd.MSG_SIZE = envlp.MSG_SIZE;

			stream_packet pkt_out;
			envelope_to_packet(&clr2snd,&pkt_out);
			pkt_out.dest = envlp.SRC;
			pkt_out.user(3,0) = FLOAT;
			pkt_out.user(7,4) = ENVLP;
			//not sure
			pkt_out.last = 1;
			pkt_out.id = MODULE_RANK;
			stream_out.write(pkt_out);
			state = DATA_RECV_LOOP;
			time = 0;
			//state_out = state;
			return 0;
			//req_out = req_num;
		//}
	}
	break;
	case DATA_RECV_LOOP: { // count or message size?
		stream_packet recv_data,useless;
		ap_uint<1> last;
		int seq_num = 0;
		ap_uint<1> test = 0;
		ap_uint<1> is_error_sent = 0;
		ap_uint<1> first_seen_error = 1;
		ap_uint<1> data_is_seen = 0;
		for(int i = 1 ; i <= (count/2)+1 ; i++ ){
			state_out =  state;
			//req_out = i;
			state_out = i+10;
			if(((i-1)*2)>= count){
				state = IDLE;
				time = 0;
				while(!last){
					useless = stream_in.read();
					last = useless.last;
				}
				envelope error;
				error.DEST = envlp.SRC;
				error.SRC = envlp.DEST;
				error.PKT_TYPE = C_DATA_TRANSMISSION_DONE;
				error.MSG_SIZE = seq_num;
				stream_packet pkt_out;
				envelope_to_packet(&error,&pkt_out);
				pkt_out.dest = envlp.SRC;
				pkt_out.user(3,0) = FLOAT;
				pkt_out.user(7,4) = ENVLP;
				pkt_out.user(39,8) = 0;
				pkt_out.last = 1;
				pkt_out.id = MODULE_RANK;
				stream_out.write(pkt_out);
				return 1;	
			}
			if(!stream_in.empty()){
				recv_data = stream_in.read();
				if(recv_data.user(7,4) == DATA){
					data_is_seen = 1;
				}
				if(recv_data.user(39,8) != seq_num && recv_data.user(7,4) == DATA){
					envelope error;
					error.DEST = envlp.SRC;
					error.SRC = envlp.DEST;
					error.PKT_TYPE = C_RECV_ERROR;
					error.MSG_SIZE = seq_num;
					// if(first_seen_error){
					// 	first_seen_error = 0;
					// 	i--;
					// }
					stream_packet pkt_out;
					envelope_to_packet(&error,&pkt_out);
					pkt_out.dest = envlp.SRC;
					pkt_out.user(3,0) = FLOAT;
					pkt_out.user(7,4) = ENVLP;
					pkt_out.user(39,8) = 0;
					pkt_out.last = 1;
					pkt_out.id = MODULE_RANK;
					if(!is_error_sent){
						stream_out.write(pkt_out);
						is_error_sent = 1;
					}
					i--;
					continue;
				}
				last = recv_data.last;
				if( (i*2) % ((ETH_DATA_FRAM_SIZE/4)-2) == 0)
				{	
					while(!last){
						useless = stream_in.read();
						last = useless.last;
					}
				}
				is_error_sent = 0;
				if(last && recv_data.user(7,4) == DATA){
					seq_num++;
					//comment this
					if(seq_num == 3 && test){
						test = 0;
						seq_num--;
						i = 6;
					}
				}
				if(recv_data.user(7,4) == DATA){
					for(int j = 0 ; j < 2 ; j++){
						if(((i-1)*2)+j< count){
							int temp = recv_data.data(((j+1)*32)-1,j*32);
							void * temp_ptr;
							temp_ptr = &temp;
							float * temp1_ptr = (float *)temp_ptr;
							buf[((i-1)*2)+j]= *temp1_ptr;
						}
					}
				}
				else if (recv_data.user(7,4) == ENVLP){
					while(!last){
						useless = stream_in.read();
						last = useless.last;
					}
					if(recv_data.user(3,0) == INT){
						envelope temp_diff_src_or_type;
						packet_to_envelope(&recv_data,&temp_diff_src_or_type);
						if(temp_diff_src_or_type.PKT_TYPE == C_SYNC_ENV_PACKET){
							for(int i = 0 ; i < int_req_num ;i++){
								if(int_request_array[i].SRC == temp_diff_src_or_type.SRC &&
								int_request_array[i].DEST == temp_diff_src_or_type.DEST &&
								int_request_array[i].PKT_TYPE == temp_diff_src_or_type.PKT_TYPE &&
								int_request_array[i].MSG_SIZE == temp_diff_src_or_type.MSG_SIZE &&
								int_request_array[i].TAG == temp_diff_src_or_type.TAG &&
								int_request_array[i].DATA_TYPE == temp_diff_src_or_type.DATA_TYPE)
									return 0;
							}
							int_request_array[int_req_num] = temp_diff_src_or_type;
							int_req_num++;
						}
						else if(temp_diff_src_or_type.PKT_TYPE == C_CLR2SND_PACKET){
							for(int i = 0 ; i < int_clr_num ;i++){
								if(int_clr2snd_array[i].SRC == temp_diff_src_or_type.SRC &&
								int_clr2snd_array[i].DEST == temp_diff_src_or_type.DEST &&
								int_clr2snd_array[i].PKT_TYPE == temp_diff_src_or_type.PKT_TYPE &&
								int_clr2snd_array[i].MSG_SIZE == temp_diff_src_or_type.MSG_SIZE &&
								int_clr2snd_array[i].TAG == temp_diff_src_or_type.TAG &&
								int_clr2snd_array[i].DATA_TYPE == temp_diff_src_or_type.DATA_TYPE)
									return 0;
							}
							int_clr2snd_array[int_clr_num] = temp_diff_src_or_type;
							int_clr_num++;
						}
						i--;
						continue;
					}
					else if(recv_data.user(3,0) == FLOAT ){
						envelope temp_diff_src_or_type;
						packet_to_envelope(&recv_data,&temp_diff_src_or_type);
						if(temp_diff_src_or_type.PKT_TYPE == C_SYNC_ENV_PACKET){
							for(int i = 0 ; i < float_req_num ;i++){
								if(float_request_array[i].SRC == temp_diff_src_or_type.SRC &&
								float_request_array[i].DEST == temp_diff_src_or_type.DEST &&
								float_request_array[i].PKT_TYPE == temp_diff_src_or_type.PKT_TYPE &&
								float_request_array[i].MSG_SIZE == temp_diff_src_or_type.MSG_SIZE &&
								float_request_array[i].TAG == temp_diff_src_or_type.TAG &&
								float_request_array[i].DATA_TYPE == temp_diff_src_or_type.DATA_TYPE)
									return 0;
							}
							float_request_array[float_req_num] = temp_diff_src_or_type;
							float_req_num++;
						}
						else if(temp_diff_src_or_type.PKT_TYPE == C_CLR2SND_PACKET){
							for(int i = 0 ; i < float_clr_num ;i++){
								if(float_clr2snd_array[i].SRC == temp_diff_src_or_type.SRC &&
								float_clr2snd_array[i].DEST == temp_diff_src_or_type.DEST &&
								float_clr2snd_array[i].PKT_TYPE == temp_diff_src_or_type.PKT_TYPE &&
								float_clr2snd_array[i].MSG_SIZE == temp_diff_src_or_type.MSG_SIZE &&
								float_clr2snd_array[i].TAG == temp_diff_src_or_type.TAG &&
								float_clr2snd_array[i].DATA_TYPE == temp_diff_src_or_type.DATA_TYPE)
									return 0;
							}
							float_clr2snd_array[float_clr_num] = temp_diff_src_or_type;
							float_clr_num++;
						}
						i--;
						continue;
					}
				}
			}
			else{
				time++;
				i--;
				if(time == TIMEOUT && (~data_is_seen)){
					time = 0;
					state = CLR2SND_SEND;
					return 0;
				}
			}
			// if(recv_data.last == 1){
			// 	state = IDLE;
			// 	return 1;
			// }
		}
		while(!last){
			useless = stream_in.read();
			last = useless.last;
		}
		state = IDLE;
		time = 0;
		envelope error;
		error.DEST = envlp.SRC;
		error.SRC = envlp.DEST;
		error.PKT_TYPE = C_DATA_TRANSMISSION_DONE;
		error.MSG_SIZE = seq_num;
		stream_packet pkt_out;
		envelope_to_packet(&error,&pkt_out);
		pkt_out.dest = envlp.SRC;
		pkt_out.user(3,0) = FLOAT;
		pkt_out.user(7,4) = ENVLP;
		pkt_out.user(39,8) = 0;
		pkt_out.last = 1;
		pkt_out.id = MODULE_RANK;
		stream_out.write(pkt_out);
		return 1;
	}
	break;
	}
	//ap_wait();
	//module_rank = 0;
	//state_out = state;
	return 0;
//}
}

int MPI_Init(){
	return 1;
}

#endif