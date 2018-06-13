#ifndef __MPI_H__   // if x.h hasn't been included yet...
#define __MPI_H__

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>    /* Must precede if*.h */
#include <linux/if.h>
#include <linux/if_ether.h>
#include <linux/if_packet.h>
#include <sys/ioctl.h>
#include <arpa/inet.h>
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <vector>
#include <unistd.h>
#include <netinet/ether.h>
#include <iostream>
#include <cstdlib>
#include <pthread.h>
#include <list>
#include <thread>
#include <mutex>
#include <time.h>

#include "tinyxml.h"

using namespace std;

#define C_SYNC_ENV_PACKET 0
#define C_CLR2SND_PACKET 1
#define C_DATA_PACKET 2
#define C_ASYNC_ENV_PACKET 3
#define C_RECV_ERROR 4
#define C_DATA_TRANSMISSION_DONE 5


#define ETHERNET_INTERFACE_NAME "eth3"
#define ETH_PROTO 0x7400

#define BUFFER_SIZE 1024

#define HEADER_OFFSET 14

#define ENVELOPE_SIZE 10

#define REQUEST_MAX_NUM 10

#define ETH_DATA_FRAM_SIZE 1496

#define MPI_SUCCESS 1

#define TIMEOUT 100


#define INT 0
#define FLOAT 1



enum MPI_DATA_TYPE{MPI_INT = 3,MPI_FLOAT=4,MPI_SHORT=2,MPI_CHAR=1};

enum MPI_COMM{MPI_COMM_WORLD = 0};

#define RANK 0



#define NUM_THREADS 1
struct thread_data {
   int  thread_id;
   char *message;
};


union envelope{
	struct{
		short DEST;
		unsigned char SRC;
		unsigned char PKT_TYPE; // [2:0] : pkt_type ; [31:10] : MSG_SIZE
		unsigned int MSG_SIZE;
		char TAG;
		char DATA_TYPE;
	}field;
	unsigned char buffer[ENVELOPE_SIZE];
};

union ethframe{
	struct{
		struct ethhdr    header;
		unsigned char    data[ETH_DATA_LEN];
	} field;
	unsigned char    buffer[ETH_FRAME_LEN];
};


struct data_packet
{
	envelope envlp;
	char buffer[ETH_FRAME_LEN];
};

int MPI_Init(int world_size);
string find_mac_address (int dest);
bool check_packet_for_me(string mac_address, struct ether_header * eh);
int send_packet(char* iface, unsigned short proto,const char* dest,
	const unsigned char * data , int data_size);
string mac_str_to_hex(string mac_address_str);
int send_envelope(unsigned int dest, unsigned int count,MPI_DATA_TYPE dataType,int tag);
int recv_packet(char* iface, unsigned short proto, unsigned char * buffer, int buffer_size);
int wait_for_clr2snd(unsigned int dest, unsigned int count,MPI_DATA_TYPE dataType,int tag);
int send_data(void * buff,unsigned count, MPI_DATA_TYPE dataType,unsigned int dest,int tag);
int wait_for_envlp(int source, MPI_DATA_TYPE dataType);
int send_clr2snd(int dest,MPI_DATA_TYPE dataType);
int receive_data(void * buff,unsigned count, MPI_DATA_TYPE dataType,unsigned int source);
int MPI_Recv(void * buff,unsigned int count,MPI_DATA_TYPE dataType,
	unsigned int src,int tag,MPI_COMM comm);
int MPI_Send(void * buff,unsigned int count,MPI_DATA_TYPE dataType,
	unsigned int dest,int tag,MPI_COMM comm);

int MPI_Finalize();


// socket variables


#endif
