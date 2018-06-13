#ifndef MPI_H
#define MPI_H

#include "ap_int.h"
#include "ap_cint.h"
#include "hls_stream.h"
#include "ap_utils.h"


#define DATA_SIZE 8
#define REQUEST_MAX_NUM 512

#define INT 0
#define FLOAT 1

#define DATA 1
#define ENVLP 0

extern ap_uint<16> id_in;

struct stream_packet{

	ap_uint<64> data;
	ap_uint <8> dest;
	ap_uint<1> last;
	ap_uint<8> id;
	ap_uint <8> keep;
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
	ap_uint<16> DEST;
	ap_uint<8> SRC;
	ap_uint<8> PKT_TYPE;
	ap_uint<16> MSG_SIZE;
	ap_uint<8> TAG;
	ap_uint<4> DATA_TYPE;
	ap_uint<4> DATA_OR_ENVLP;
};


void envelope_to_packet(envelope * envlp, stream_packet * packet){
	packet->data(15,0) = envlp->DEST;
	packet->data(23,16) = envlp->SRC;
	packet->data(31,24) = envlp->PKT_TYPE;
	packet->data(47,32) = envlp->MSG_SIZE;
	packet->data(55,48) = envlp->TAG;
	packet->data(59,56) = envlp->DATA_TYPE;
	packet->data(63,60) = envlp->DATA_OR_ENVLP;
	packet->dest = envlp->DEST;
	packet->id = envlp->SRC;
	packet->last = 1;
}

void packet_to_envelope( stream_packet * packet, envelope * envlp){
	envlp->DEST=packet->dest;
	envlp->SRC=packet->data(23,16) ;
	envlp->PKT_TYPE=packet->data(31,24);
	envlp->MSG_SIZE=packet->data(47,32);
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
		int MPI_Comm)
{
//#pragma HLS INLINE
	

	static enum State {IDLE = 0,CLR2SND_WAIT, DATA_SEND_LOOP} state;

	char * buff_char_ptr = (char *) buf;


	static ap_uint<64> time = 0;  



	static envelope envlp;

	switch(state){
	case IDLE:{
		//send the envelope
		envlp.SRC = id_in;
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
		stream_packet pkt_out;
		envelope_to_packet(&envlp,&pkt_out);
		pkt_out.dest = dest;
		pkt_out.user(3,0) = INT;
		pkt_out.user(7,4) = ENVLP;
		pkt_out.id = id_in;
		stream_out.write(pkt_out);
		state = CLR2SND_WAIT;
		// timer for timeout
		time = 0;
	}
	break;
	case CLR2SND_WAIT:{
		// search for clr2snd in buffer because it could be already received
		for(int i = 0 ; i < int_clr_num ;i++){
			if(int_clr2snd_array[i].PKT_TYPE == C_CLR2SND_PACKET
			&& int_clr2snd_array[i].DEST == id_in
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


		// it was not in buffer so wait for it
		ap_uint<1> last;
		stream_packet recv_pkt,useless;
		if(!stream_in.empty()){

			recv_pkt = stream_in.read();
			last = recv_pkt.last;
			while(!last){
				useless = stream_in.read();
				last = useless.last;
			}
			// if it is the desired clr2snd we good to go and send data
			envelope temp;
			packet_to_envelope(&recv_pkt,&temp);
			if(temp.PKT_TYPE == C_CLR2SND_PACKET && temp.DEST == id_in && temp.SRC == dest){
				state = DATA_SEND_LOOP;
				time = 0;
				return 0;
			}

			// if the received packet is not desired we need to put it in the right buffer
			if(recv_pkt.user(7,4) == ENVLP){
				if(recv_pkt.user(3,0) == INT){
					envelope temp_diff_src_or_type;
					packet_to_envelope(&recv_pkt,&temp_diff_src_or_type);
					if(temp_diff_src_or_type.PKT_TYPE == C_SYNC_ENV_PACKET){
						// perevents duplicates
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
						// perevents duplicates
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
		int old_seq_num = 0;
		int i = 0;
		bool seq_inc = 0;
		bool transmission_done = 0;
		bool test = 0;
		bool error_is_seen = 0;
send:
		for(i ; i < count*dataType ; i+= DATA_SIZE ){
			stream_packet to_send_data;
			stream_packet recv_data,useless;
			ap_uint<1> last;
			// check if a packet received during sending data
			if(!stream_in.empty()){

				recv_data = stream_in.read();
				last = recv_data.last;
				while(!last){
					useless = stream_in.read();
					last = useless.last;
				}

				envelope temp;
				packet_to_envelope(&recv_data,&temp);
				// if the packet is a error
				if(temp.PKT_TYPE == C_RECV_ERROR && recv_data.id == dest){
					i = temp.MSG_SIZE*(ETH_DATA_FRAM_SIZE-8);
					seq_num = temp.MSG_SIZE;
					error_is_seen = 1;
					old_seq_num = seq_num;
					//state_out = 12;
					continue;
				}
				else if(temp.PKT_TYPE == C_DATA_TRANSMISSION_DONE && recv_data.id == dest){
					transmission_done = 1;
				}
				else if(recv_data.user(7,4) == ENVLP){
					if(recv_data.user(3,0) == INT){
						envelope temp_diff_src_or_type;
						packet_to_envelope(&recv_data,&temp_diff_src_or_type);
						if(temp_diff_src_or_type.PKT_TYPE == C_SYNC_ENV_PACKET){
							// perevents duplicates
							bool is_duplicated  = 0;
							for(int i = 0 ; i < int_req_num ;i++){
								if(int_request_array[i].SRC == temp_diff_src_or_type.SRC &&
								int_request_array[i].DEST == temp_diff_src_or_type.DEST &&
								int_request_array[i].PKT_TYPE == temp_diff_src_or_type.PKT_TYPE &&
								int_request_array[i].MSG_SIZE == temp_diff_src_or_type.MSG_SIZE &&
								int_request_array[i].TAG == temp_diff_src_or_type.TAG &&
								int_request_array[i].DATA_TYPE == temp_diff_src_or_type.DATA_TYPE){	
									is_duplicated = 1;
									break;
								}
							}
							if(!is_duplicated){
								int_request_array[int_req_num] = temp_diff_src_or_type;
								int_req_num++;
							}
						}
						else if(temp_diff_src_or_type.PKT_TYPE == C_CLR2SND_PACKET){
							// perevents duplicates
							bool is_duplicated  = 0;
							for(int i = 0 ; i < int_clr_num ;i++){
								if(int_clr2snd_array[i].SRC == temp_diff_src_or_type.SRC &&
								int_clr2snd_array[i].DEST == temp_diff_src_or_type.DEST &&
								int_clr2snd_array[i].PKT_TYPE == temp_diff_src_or_type.PKT_TYPE &&
								int_clr2snd_array[i].MSG_SIZE == temp_diff_src_or_type.MSG_SIZE &&
								int_clr2snd_array[i].TAG == temp_diff_src_or_type.TAG &&
								int_clr2snd_array[i].DATA_TYPE == temp_diff_src_or_type.DATA_TYPE){
									is_duplicated = 1;
									break;
								}
							}
							if(!is_duplicated){
								int_clr2snd_array[int_clr_num] = temp_diff_src_or_type;
								int_clr_num++;
							}
						}
					}
					else if(recv_data.user(3,0) == FLOAT){
						envelope temp_diff_src_or_type;
						packet_to_envelope(&recv_data,&temp_diff_src_or_type);
						if(temp_diff_src_or_type.PKT_TYPE == C_SYNC_ENV_PACKET){
							bool is_duplicated  = 0;
							for(int i = 0 ; i < float_req_num ;i++){
								if(float_request_array[i].SRC == temp_diff_src_or_type.SRC &&
								float_request_array[i].DEST == temp_diff_src_or_type.DEST &&
								float_request_array[i].PKT_TYPE == temp_diff_src_or_type.PKT_TYPE &&
								float_request_array[i].MSG_SIZE == temp_diff_src_or_type.MSG_SIZE &&
								float_request_array[i].TAG == temp_diff_src_or_type.TAG &&
								float_request_array[i].DATA_TYPE == temp_diff_src_or_type.DATA_TYPE){
									is_duplicated = 1;
									break;
								}
							}
							if(!is_duplicated){
								float_request_array[float_req_num] = temp_diff_src_or_type;
								float_req_num++;
							}
						}
						else if(temp_diff_src_or_type.PKT_TYPE == C_CLR2SND_PACKET){
							bool is_duplicated  = 0;
							for(int i = 0 ; i < float_clr_num ;i++){
								if(float_clr2snd_array[i].SRC == temp_diff_src_or_type.SRC &&
								float_clr2snd_array[i].DEST == temp_diff_src_or_type.DEST &&
								float_clr2snd_array[i].PKT_TYPE == temp_diff_src_or_type.PKT_TYPE &&
								float_clr2snd_array[i].MSG_SIZE == temp_diff_src_or_type.MSG_SIZE &&
								float_clr2snd_array[i].TAG == temp_diff_src_or_type.TAG &&
								float_clr2snd_array[i].DATA_TYPE == temp_diff_src_or_type.DATA_TYPE){
									is_duplicated = 1;
									break;
								}
							}
							if(!is_duplicated){
								float_clr2snd_array[float_clr_num] = temp_diff_src_or_type;
								float_clr_num++;
							}
						}
					}
				}
			}

			if(error_is_seen){
				//send a garbage packet with high last
				stream_packet garbage;
				error_is_seen = 0;
				garbage.data = 0;
				to_send_data.last = 1;
				to_send_data.id = id_in;
				to_send_data.user(3,0) = FLOAT;
				to_send_data.user(7,4) = DATA;
				to_send_data.user(39,8) = old_seq_num;
				stream_out.write(to_send_data);
				i-= DATA_SIZE;
				continue;
			}


			// make data field of packet out of the array
			for(int j = 0 ; j < DATA_SIZE ; j++){
				to_send_data.data(((j+1)*8)-1,j*8) = buff_char_ptr[(i+j)];
			}
			to_send_data.dest = dest;
			//last of the last packet
			if((i+DATA_SIZE) >= count*dataType){
				to_send_data.last = 1;
			}
			// last of the each fragment
			else if (((i+DATA_SIZE) % (ETH_DATA_FRAM_SIZE-8)) == 0){
				to_send_data.last = 1;
				seq_inc = 1;
			}
			else
				to_send_data.last = 0;

			to_send_data.user(3,0) = INT;
			to_send_data.user(7,4) = DATA;
			to_send_data.user(39,8) = seq_num;

			to_send_data.id = id_in;
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
		// wait until get the done packet
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
				//state_out = 12;
				goto send;
			}
			else if(temp.PKT_TYPE == C_DATA_TRANSMISSION_DONE && recv_data.id == dest){
				state = IDLE;
				return 1;
			}
			else if(recv_data.user(7,4) == ENVLP){
				if(recv_data.user(3,0) == INT){
					envelope temp_diff_src_or_type;
					packet_to_envelope(&recv_data,&temp_diff_src_or_type);
					if(temp_diff_src_or_type.PKT_TYPE == C_SYNC_ENV_PACKET){
						// perevents duplicates
						bool is_duplicated  = 0;
						for(int i = 0 ; i < int_req_num ;i++){
							if(int_request_array[i].SRC == temp_diff_src_or_type.SRC &&
							int_request_array[i].DEST == temp_diff_src_or_type.DEST &&
							int_request_array[i].PKT_TYPE == temp_diff_src_or_type.PKT_TYPE &&
							int_request_array[i].MSG_SIZE == temp_diff_src_or_type.MSG_SIZE &&
							int_request_array[i].TAG == temp_diff_src_or_type.TAG &&
							int_request_array[i].DATA_TYPE == temp_diff_src_or_type.DATA_TYPE){	
								is_duplicated = 1;
								break;
							}
						}
						if(!is_duplicated){
							int_request_array[int_req_num] = temp_diff_src_or_type;
							int_req_num++;
						}
					}
					else if(temp_diff_src_or_type.PKT_TYPE == C_CLR2SND_PACKET){
						// perevents duplicates
						bool is_duplicated  = 0;
						for(int i = 0 ; i < int_clr_num ;i++){
							if(int_clr2snd_array[i].SRC == temp_diff_src_or_type.SRC &&
							int_clr2snd_array[i].DEST == temp_diff_src_or_type.DEST &&
							int_clr2snd_array[i].PKT_TYPE == temp_diff_src_or_type.PKT_TYPE &&
							int_clr2snd_array[i].MSG_SIZE == temp_diff_src_or_type.MSG_SIZE &&
							int_clr2snd_array[i].TAG == temp_diff_src_or_type.TAG &&
							int_clr2snd_array[i].DATA_TYPE == temp_diff_src_or_type.DATA_TYPE){
								is_duplicated = 1;
								break;
							}
						}
						if(!is_duplicated){
							int_clr2snd_array[int_clr_num] = temp_diff_src_or_type;
							int_clr_num++;
						}
					}
				}
				else if(recv_data.user(3,0) == FLOAT){
					envelope temp_diff_src_or_type;
					packet_to_envelope(&recv_data,&temp_diff_src_or_type);
					if(temp_diff_src_or_type.PKT_TYPE == C_SYNC_ENV_PACKET){
						bool is_duplicated  = 0;
						for(int i = 0 ; i < float_req_num ;i++){
							if(float_request_array[i].SRC == temp_diff_src_or_type.SRC &&
							float_request_array[i].DEST == temp_diff_src_or_type.DEST &&
							float_request_array[i].PKT_TYPE == temp_diff_src_or_type.PKT_TYPE &&
							float_request_array[i].MSG_SIZE == temp_diff_src_or_type.MSG_SIZE &&
							float_request_array[i].TAG == temp_diff_src_or_type.TAG &&
							float_request_array[i].DATA_TYPE == temp_diff_src_or_type.DATA_TYPE){
								is_duplicated = 1;
								break;
							}
						}
						if(!is_duplicated){
							float_request_array[float_req_num] = temp_diff_src_or_type;
							float_req_num++;
						}
					}
					else if(temp_diff_src_or_type.PKT_TYPE == C_CLR2SND_PACKET){
						bool is_duplicated  = 0;
						for(int i = 0 ; i < float_clr_num ;i++){
							if(float_clr2snd_array[i].SRC == temp_diff_src_or_type.SRC &&
							float_clr2snd_array[i].DEST == temp_diff_src_or_type.DEST &&
							float_clr2snd_array[i].PKT_TYPE == temp_diff_src_or_type.PKT_TYPE &&
							float_clr2snd_array[i].MSG_SIZE == temp_diff_src_or_type.MSG_SIZE &&
							float_clr2snd_array[i].TAG == temp_diff_src_or_type.TAG &&
							float_clr2snd_array[i].DATA_TYPE == temp_diff_src_or_type.DATA_TYPE){
								is_duplicated = 1;
								break;
							}
						}
						if(!is_duplicated){
							float_clr2snd_array[float_clr_num] = temp_diff_src_or_type;
							float_clr_num++;
						}
					}
				}
			}
		}
	}
	break;
	}
	return 0;
}
int MPI_Send(
		float * buf,
		int count,
		MPI_DATA_TYPE dataType,
		int dest,
		int tag,
		int MPI_Comm)
{
//#pragma HLS INLINE

	static enum State {IDLE = 0,CLR2SND_WAIT, DATA_SEND_LOOP,DONE_WAIT} state;


	static bool envlp_lost_test = 0;
	static envelope envlp;

	static int d = 0;
	static int seq_num = 0;
	static int old_seq_num = 0;
	static bool error_is_seen = 0;

	switch(state){
	case IDLE:{
		// send envelope 
		envlp.SRC = id_in;
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
		stream_packet pkt_out;
		envelope_to_packet(&envlp,&pkt_out);
		pkt_out.dest = dest; // problem solver
		pkt_out.user(3,0) = FLOAT;
		pkt_out.user(7,4) = ENVLP;
		pkt_out.keep = 0xff;
		pkt_out.id = id_in;
		if(envlp_lost_test){
			envlp_lost_test = 0;
		}
		else
			stream_out.write(pkt_out);
		state = CLR2SND_WAIT;
	}
	break;
	case CLR2SND_WAIT:{
		// search for the clr2snd in buffers it could be already received
		for(int i = 0 ; i < float_clr_num ;i++){
			if(float_clr2snd_array[i].PKT_TYPE == C_CLR2SND_PACKET
			&& float_clr2snd_array[i].DEST == id_in
			&& float_clr2snd_array[i].SRC == dest){
				envlp = float_clr2snd_array[i];
				state = DATA_SEND_LOOP;
				float_clr_num--;
				for(int j = i; j < float_clr_num;j++){
					float_clr2snd_array[j] = float_clr2snd_array[j+1];
				}
				return 0;
			}
		}


		// if it is not in buffers we need to wai for clr2snd
		ap_uint<1> last;
		stream_packet recv_pkt,useless;
		recv_pkt = stream_in.read();
		last = recv_pkt.last;
		// while(!last){
		// 	useless = stream_in.read();
		// 	last = useless.last;
		// }

		// if rthe received packet is clr2snd we good to send data
		envelope temp;
		packet_to_envelope(&recv_pkt,&temp);
		if(temp.PKT_TYPE == C_CLR2SND_PACKET && temp.DEST == id_in && temp.SRC == dest){
			state = DATA_SEND_LOOP;
			return 0;
		}
	
		// the received packet is not desired cl2snd but we need to put it in right buffer
		if(recv_pkt.user(7,4) == ENVLP){
			if(recv_pkt.user(3,0) == INT){
				envelope temp_diff_src_or_type;
				packet_to_envelope(&recv_pkt,&temp_diff_src_or_type);
				if(temp_diff_src_or_type.PKT_TYPE == C_SYNC_ENV_PACKET){
					int_request_array[int_req_num] = temp_diff_src_or_type;
					int_req_num++;
				}
				else if(temp_diff_src_or_type.PKT_TYPE == C_CLR2SND_PACKET){
					int_clr2snd_array[int_clr_num] = temp_diff_src_or_type;
					int_clr_num++;
				}
				return 0;
			}
			else if(recv_pkt.user(3,0) == FLOAT){
				envelope temp_diff_src_or_type;
				packet_to_envelope(&recv_pkt,&temp_diff_src_or_type);
				if(temp_diff_src_or_type.PKT_TYPE == C_SYNC_ENV_PACKET){
					float_request_array[float_req_num] = temp_diff_src_or_type;
					float_req_num++;
				}
				else if(temp_diff_src_or_type.PKT_TYPE == C_CLR2SND_PACKET){
					float_clr2snd_array[float_clr_num] = temp_diff_src_or_type;
					float_clr_num++;
				}
				return 0;
			}
		}
	}
	break;
	case DATA_SEND_LOOP: {
		
		bool seq_inc = 0;
		bool transmission_done = 0;
		bool failed = 0;
		volatile bool for_finished = 0;
		stream_packet recv_data,useless;
		envelope temp;
		
		bool test = 0;
		for(d = 0 ; d < count ; d += 2){
#pragma HLS PIPELINE
#pragma HLS dependence variable=d inter false
			ap_uint <1> last = 0;
			stream_packet to_send_data;
			
			if(count == 0){
				state = DONE_WAIT;
				return 0;
			}
			if(!stream_in.empty()){
				recv_data = stream_in.read();
				last = recv_data.last;
				
				packet_to_envelope(&recv_data,&temp);
	
				if(temp.PKT_TYPE == C_DATA_TRANSMISSION_DONE && recv_data.id == dest){
					state = IDLE;
					return 1;
				}
				else if(recv_data.user(7,4) == ENVLP){
					if(recv_data.user(3,0) == INT){
						envelope temp_diff_src_or_type;
						packet_to_envelope(&recv_data,&temp_diff_src_or_type);
						if(temp_diff_src_or_type.PKT_TYPE == C_SYNC_ENV_PACKET){
							int_request_array[int_req_num] = temp_diff_src_or_type;
							int_req_num++;
						}
						else if(temp_diff_src_or_type.PKT_TYPE == C_CLR2SND_PACKET){
							int_clr2snd_array[int_clr_num] = temp_diff_src_or_type;
							int_clr_num++;
						}
					}
					else if(recv_data.user(3,0) == FLOAT){
						envelope temp_diff_src_or_type;
						packet_to_envelope(&recv_data,&temp_diff_src_or_type);
						if(temp_diff_src_or_type.PKT_TYPE == C_SYNC_ENV_PACKET){
							float_request_array[float_req_num] = temp_diff_src_or_type;
							float_req_num++;
						}
						else if(temp_diff_src_or_type.PKT_TYPE == C_CLR2SND_PACKET){
							float_clr2snd_array[float_clr_num] = temp_diff_src_or_type;
							float_clr_num++;
						}
					}
				}
			}


			float temp1= buf[d+0];
			void * vtemp1_p= &temp1;
			int * itemp1_p = (int *)vtemp1_p;
			int itemp1 = *itemp1_p;
			to_send_data.data(((0+1)*32)-1,0*32) = itemp1;
			

			if(d+1 >= count){
				to_send_data.data(((1+1)*32)-1,1*32) = 0;
				to_send_data.last = 1;
				to_send_data.id = id_in;
				to_send_data.user(3,0) = FLOAT;
				to_send_data.user(7,4) = DATA;
				to_send_data.dest = dest;
				to_send_data.user(39,8) = count*4;
				to_send_data.keep = 0x0f;
				stream_out.write(to_send_data);
				//for_finished = 1;
				state = DONE_WAIT;
				return 0;
			}
			float temp2= buf[d+1];
			void * vtemp2_p= &temp2;
			int * itemp2_p = (int *)vtemp2_p;
			int itemp2 = *itemp2_p;
			to_send_data.data(((1+1)*32)-1,1*32) = itemp2;

			if(d+2 >= count){
				to_send_data.last = 1;
			}
			else{
				to_send_data.last = 0;
			}

			to_send_data.dest = dest;
			to_send_data.id = id_in;
			to_send_data.user(3,0) = FLOAT;
			to_send_data.user(7,4) = DATA;
			to_send_data.id = id_in;
			to_send_data.keep = 0xff;
			to_send_data.user(39,8) = count*4;
			stream_out.write(to_send_data);
		}
		state = DONE_WAIT;
		return 0;
	}
	break;
	case DONE_WAIT: {
		stream_packet recv_data,useless;
		ap_uint <1> last = 0;
		recv_data = stream_in.read();
		last = recv_data.last;
		while(!last){
			useless = stream_in.read();
			last = useless.last;
		}
		envelope temp;
		//state_out = 15;
		packet_to_envelope(&recv_data,&temp);
		// if(temp.PKT_TYPE == C_RECV_ERROR && recv_data.id == dest){
		if(temp.PKT_TYPE == C_RECV_ERROR && recv_data.id == dest){
			d = (temp.MSG_SIZE*((ETH_DATA_FRAM_SIZE/4)-2)/2)+1;
			error_is_seen = 1;
			//i = 15;
			old_seq_num = seq_num;
			seq_num = temp.MSG_SIZE;
			//state_out = 16;
			state = DATA_SEND_LOOP;
			return 0;
			//return 0;
		}
		else if(temp.PKT_TYPE == C_DATA_TRANSMISSION_DONE && recv_data.id == dest){
			state = IDLE;
			//for_finished = 0;
			d = 1;
			seq_num = 0;
			old_seq_num = 0;
			error_is_seen = 0;
			return 1;
			//state_out = 1;
		}
		else if(recv_data.user(7,4) == ENVLP){
			if(recv_data.user(3,0) == INT){
				envelope temp_diff_src_or_type;
				packet_to_envelope(&recv_data,&temp_diff_src_or_type);
				if(temp_diff_src_or_type.PKT_TYPE == C_SYNC_ENV_PACKET){
					int_request_array[int_req_num] = temp_diff_src_or_type;
					int_req_num++;
				}
				else if(temp_diff_src_or_type.PKT_TYPE == C_CLR2SND_PACKET){
					int_clr2snd_array[int_clr_num] = temp_diff_src_or_type;
					int_clr_num++;
				}
			}
			else if(recv_data.user(3,0) == FLOAT){
				envelope temp_diff_src_or_type;
				packet_to_envelope(&recv_data,&temp_diff_src_or_type);
				if(temp_diff_src_or_type.PKT_TYPE == C_SYNC_ENV_PACKET){
					float_request_array[float_req_num] = temp_diff_src_or_type;
					float_req_num++;
				}
				else if(temp_diff_src_or_type.PKT_TYPE == C_CLR2SND_PACKET){
					float_clr2snd_array[float_clr_num] = temp_diff_src_or_type;
					float_clr_num++;
				}
			}
		}
	}
	break;
	}
	return 0;
}

int MPI_Recv(
		int * buf,
		int count,
		MPI_DATA_TYPE dataType,
		int source,
		int tag,
		int MPI_Comm
		){

	static enum State {IDLE = 0,CLR2SND_SEND, DATA_RECV_LOOP} state;


	char * buff_char_ptr = (char *) buf;
	static ap_uint<64> time = 0;  

	static envelope envlp;

	switch(state){
	case IDLE:{
		//if(!stream_in.empty()){
		//state_out = state;
		for(int i = 0 ; i < int_req_num ;i++){
			if(int_request_array[i].PKT_TYPE == C_SYNC_ENV_PACKET
			&& int_request_array[i].DEST == id_in
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
		&& envlp.DEST == id_in
		&& envlp.SRC == source){
			state = CLR2SND_SEND;
		}
		//id_in = id_in && recv_pkt.dest;
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
			pkt_out.id = id_in;
			stream_out.write(pkt_out);
			state = DATA_RECV_LOOP;
			time = 0;
			return 0;
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
					pkt_out.id = id_in;
					if(!is_error_sent){
						is_error_sent = 1;
						stream_out.write(pkt_out);
					}
					i-=DATA_SIZE;
					continue;
				}
				last = recv_data.last;
				if(((i+DATA_SIZE) % (ETH_DATA_FRAM_SIZE-8)) == 0){
					while(!last){
						useless = stream_in.read();
						last = useless.last;
					}
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

				if(recv_data.user(7,4) == DATA){
					for(int j = 0 ; j < DATA_SIZE ; j++){
						buff_char_ptr[(i*DATA_SIZE)+j] = recv_data.data(((j+1)*8)-1,j*8);
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
						i-=DATA_SIZE;
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
						i-=DATA_SIZE;
						continue;
					}
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
		pkt_out.id = id_in;
		stream_out.write(pkt_out);
		return 1;
	}
	break;
	}
	//ap_wait();
	return 0;
//}
}
int MPI_Recv(
		float * buf,
		int count,
		MPI_DATA_TYPE dataType,
		int source,
		int tag,
		int MPI_Comm
		){
//section_2:{
//#pragma HLS protocol fixed



	static enum State {IDLE = 0,CLR2SND_SEND, DATA_RECV_LOOP,SEND_DONE} state;
	static ap_uint<64> time = 0;  


	static ap_uint<1> last;
	static int seq_num = 0;



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


	static bool clr2snd_error = 0;

	static envelope envlp;

	switch(state){
	case IDLE:{

		// searching the buffer to see if the envelope has already received
		//state_out = state;
		for(int i = 0 ; i < float_req_num ;i++){
			if(float_request_array[i].PKT_TYPE == C_SYNC_ENV_PACKET
			&& float_request_array[i].DEST == id_in
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
		&& envlp.DEST == id_in
		&& envlp.SRC == source){
			state = CLR2SND_SEND;
			return 0;
		}

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
			pkt_out.keep = 0xff;
			//not sure
			pkt_out.last = 1;
			pkt_out.id = id_in;
			if(clr2snd_error)
				clr2snd_error = 0;
			else
				stream_out.write(pkt_out);
			state = DATA_RECV_LOOP;
			//time = 0;
			//state_out = state;
			return 0;
			//req_out = req_num;
		//}
	}
	break;
	case DATA_RECV_LOOP: { // count or message size?
		stream_packet recv_data,useless;
		
		ap_uint<1> test = 0;
		ap_uint<1> is_error_sent = 0;
		ap_uint<1> first_seen_error = 1;
		ap_uint<1> data_is_seen = 0;
		if(count == 0){
			state = SEND_DONE;
			return 0;
		}
		for(int i = 0 ; i < count ; i+=2){
#pragma HLS PIPELINE

			if(!stream_in.empty()){

				recv_data = stream_in.read();
	
				if(recv_data.user(7,4) == DATA){
					if(recv_data.keep == 0xff){
						for(int j = 0 ; j < 2 ; j++){
							int temp = recv_data.data(((j+1)*32)-1,j*32);
							void * temp_ptr;
							temp_ptr = &temp;
							float * temp1_ptr = (float *)temp_ptr;
							buf[i+j]= *temp1_ptr;
						}
					}
					else if(recv_data.keep == 0x0f){
						for(int j = 0 ; j < 1 ; j++){
							int temp = recv_data.data(((j+1)*32)-1,j*32);
							void * temp_ptr;
							temp_ptr = &temp;
							float * temp1_ptr = (float *)temp_ptr;
							buf[i+j]= *temp1_ptr;
						}
						i--;
					}
				}
				else if (recv_data.user(7,4) == ENVLP){
					if(recv_data.user(3,0) == INT){
						envelope temp_diff_src_or_type;
						packet_to_envelope(&recv_data,&temp_diff_src_or_type);
						if(temp_diff_src_or_type.PKT_TYPE == C_SYNC_ENV_PACKET){
							int_request_array[int_req_num] = temp_diff_src_or_type;
							int_req_num++;
						}
						else if(temp_diff_src_or_type.PKT_TYPE == C_CLR2SND_PACKET){
							int_clr2snd_array[int_clr_num] = temp_diff_src_or_type;
							int_clr_num++;
						}
						i-=2;
						continue;
					}
					else if(recv_data.user(3,0) == FLOAT ){
						envelope temp_diff_src_or_type;
						packet_to_envelope(&recv_data,&temp_diff_src_or_type);
						if(temp_diff_src_or_type.PKT_TYPE == C_SYNC_ENV_PACKET){
							float_request_array[float_req_num] = temp_diff_src_or_type;
							float_req_num++;
						}
						else if(temp_diff_src_or_type.PKT_TYPE == C_CLR2SND_PACKET){
							float_clr2snd_array[float_clr_num] = temp_diff_src_or_type;
							float_clr_num++;
						}
						i-=2;
						continue;
					}
				}
			}
			else{
				i -= 2;
			}
		}
		state = SEND_DONE;
		return 0;
	}
	break;
	case SEND_DONE: {
		stream_packet recv_data,useless;

		// while(!last){
		// 	useless = stream_in.read();
		// 	last = useless.last;
		// }
		state = IDLE;
		time = 0;
		envelope error;
		error.DEST = envlp.SRC;
		error.SRC = id_in;
		error.PKT_TYPE = C_DATA_TRANSMISSION_DONE;
		error.MSG_SIZE = seq_num;
		seq_num = 0;
		stream_packet pkt_out;
		envelope_to_packet(&error,&pkt_out);
		pkt_out.dest = envlp.SRC;
		pkt_out.user(3,0) = FLOAT;
		pkt_out.user(7,4) = ENVLP;
		pkt_out.user(39,8) = 0;
		pkt_out.last = 1;
		pkt_out.id = id_in;
		pkt_out.keep = 0xff;
		stream_out.write(pkt_out);
		return 1;
	}
	break;
	}
	//ap_wait();
	//id_in = 0;
	//state_out = state;
	return 0;
//}
}

int MPI_Init(){
	return 1;
}
int MPI_Init(int){
	return 1;
}

int MPI_Finalize(){
	return 1;
}

#endif
