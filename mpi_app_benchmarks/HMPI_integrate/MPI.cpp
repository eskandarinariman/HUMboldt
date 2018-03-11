#include "MPI.h"

list<envelope> request_list;
list<envelope> clr2snd_list;
list<data_packet> data_list;
list<envelope> error_list;
list<envelope> done_list;

clock_t time_begin,time_end;

int req_num = 0;
int clr_num = 0;

pthread_mutex_t lock = PTHREAD_MUTEX_INITIALIZER;
mutex myMutex;
thread t;

bool is_receiving = 1;

//pthread_t threads[NUM_THREADS];
//struct thread_data td[NUM_THREADS];

int receiving_size;

	int s;
	struct ifreq buffer;
	int ifindex;
	unsigned char source[ETH_ALEN];

int MPI_Finalize(){
	is_receiving = 0;
	t.join();
	cout << "Finished ..." <<endl;
	//pthread_exit(NULL);
	return 0;
}

void eth_receiver_func() {

   	// struct thread_data *my_data;
   	// my_data = (struct thread_data *) threadarg;

   	unsigned char buffer[ETH_FRAME_LEN];
	union envelope envlp;

	int numbytes;

   	while(is_receiving){
   		//cout << "#"<<endl;
  //  		for(int i = 0; i < ENVELOPE_SIZE; i++){
		// 	cout << hex << (int)envlp.buffer[i] <<endl;
		// }
		//cout << "#"<<endl;
		numbytes = recv_packet(ETHERNET_INTERFACE_NAME,ETH_PROTO,buffer,ETH_FRAME_LEN);
   		if(numbytes != -1){
   			std::lock_guard<std::mutex> guard(myMutex);
   			//cout << "l = 1"<<endl;
   			//cout <<numbytes<<endl;
			envlp.buffer[0] = buffer[HEADER_OFFSET];
			envlp.buffer[1] = buffer[1+HEADER_OFFSET];
			for(int i = 2; i < ENVELOPE_SIZE; i++){
				envlp.buffer[i] = buffer[i+HEADER_OFFSET];
				//cout << hex << (int)envlp.buffer[i] <<endl;
			}
			// cout << "envlp" <<endl;
			// for(int i = 0; i < ENVELOPE_SIZE; i++){
			// 	cout << hex << (int)envlp.buffer[i] <<endl;
			// }
			if((envlp.field.PKT_TYPE == C_CLR2SND_PACKET || envlp.field.PKT_TYPE == C_SYNC_ENV_PACKET)  && envlp.field.DEST == RANK){
				if(envlp.field.PKT_TYPE == C_CLR2SND_PACKET){
					bool is_duplicated  = 0;
					for(list<envelope>::iterator it = clr2snd_list.begin(); it != clr2snd_list.end(); it++){
						if((*it).field.SRC == envlp.field.SRC &&
						(*it).field.DEST == envlp.field.DEST &&
						(*it).field.PKT_TYPE == envlp.field.PKT_TYPE &&
						(*it).field.MSG_SIZE == envlp.field.MSG_SIZE &&
						(*it).field.TAG == envlp.field.TAG &&
						(*it).field.DATA_TYPE == envlp.field.DATA_TYPE){	
							is_duplicated = 1;
							break;
						}
					}
					if(!is_duplicated){
						clr2snd_list.push_back(envlp);
					}
					
					// if(envlp.field.DATA_TYPE == INT)
					// 	cout << "added to clr2snd list as INT"<<endl;
					// else if(envlp.field.DATA_TYPE == FLOAT)
					// 	cout << "added to clr2snd list as FLOAT"<<endl;

				}
				else if(envlp.field.PKT_TYPE == C_SYNC_ENV_PACKET){

					bool is_duplicated  = 0;
					for(list<envelope>::iterator it = request_list.begin(); it != request_list.end(); it++){
						if((*it).field.SRC == envlp.field.SRC &&
						(*it).field.DEST == envlp.field.DEST &&
						(*it).field.PKT_TYPE == envlp.field.PKT_TYPE &&
						(*it).field.MSG_SIZE == envlp.field.MSG_SIZE &&
						(*it).field.TAG == envlp.field.TAG &&
						(*it).field.DATA_TYPE == envlp.field.DATA_TYPE){	
							is_duplicated = 1;
							break;
						}
					}
					if(!is_duplicated){
						request_list.push_back(envlp);
					}
					//request_list.push_back(envlp);
					// if(envlp.field.DATA_TYPE == INT)
					// 	cout << "added to request list as INT"<<endl;
					// else if(envlp.field.DATA_TYPE == FLOAT)
					// 	cout << "added to request list as FLOAT"<<endl;
				}
			}
			else if(envlp.field.PKT_TYPE == C_DATA_PACKET ){
				data_packet data;
				data.envlp = envlp;

				if(numbytes > ETH_DATA_FRAM_SIZE+HEADER_OFFSET+2)
					numbytes = ETH_DATA_FRAM_SIZE+HEADER_OFFSET+2;
				unsigned char buffer_temp[ETH_FRAME_LEN];
				for(int i = 0; i < numbytes ;i++){
					data.buffer[i] = buffer[i]; 
					//cout << "byte " << i << " : " <<hex << (int)data.buffer[i] <<endl;
				}

				// for(int i = 0 ; i < ETH_DATA_FRAM_SIZE- (ENVELOPE_SIZE-2);i++)
				// 	cout << "\tbyte " << i << " : " <<hex << (int)buffer_temp[i] <<endl;

				//cin.get();

				data_list.push_back(data);
				// if(envlp.field.DATA_TYPE == INT)
				// 	cout << "added to data list as INT"<<endl;
				// else if(envlp.field.DATA_TYPE == FLOAT)
				// 	cout << "added to data list as FLOAT"<<endl;
			}
			else if(envlp.field.PKT_TYPE == C_RECV_ERROR && envlp.field.DEST == RANK){
				bool is_duplicated  = 0;
				for(list<envelope>::iterator it = error_list.begin(); it != error_list.end(); it++){
					if((*it).field.SRC == envlp.field.SRC &&
					(*it).field.DEST == envlp.field.DEST &&
					(*it).field.PKT_TYPE == envlp.field.PKT_TYPE &&
					(*it).field.MSG_SIZE == envlp.field.MSG_SIZE &&
					(*it).field.TAG == envlp.field.TAG &&
					(*it).field.DATA_TYPE == envlp.field.DATA_TYPE){	
						is_duplicated = 1;
						break;
					}
				}
				if(!is_duplicated){
					error_list.push_back(envlp);
				}
			}
			else if(envlp.field.PKT_TYPE == C_DATA_TRANSMISSION_DONE && envlp.field.DEST == RANK){
				bool is_duplicated  = 0;
				for(list<envelope>::iterator it = done_list.begin(); it != done_list.end(); it++){
					if((*it).field.SRC == envlp.field.SRC &&
					(*it).field.DEST == envlp.field.DEST &&
					(*it).field.PKT_TYPE == envlp.field.PKT_TYPE &&
					(*it).field.MSG_SIZE == envlp.field.MSG_SIZE &&
					(*it).field.TAG == envlp.field.TAG &&
					(*it).field.DATA_TYPE == envlp.field.DATA_TYPE){	
						is_duplicated = 1;
						break;
					}
				}
				if(!is_duplicated){
					done_list.push_back(envlp);
				}
				
			}
		}
		//mu.unlock();
   	}
}

int MPI_Init(){

	if ((s = socket(AF_PACKET, SOCK_RAW, htons(ETH_PROTO))) < 0) {
		printf("Error: could not open socket\n");
		return -1;
	}
	memset(&buffer, 0x00, sizeof(buffer));
	strncpy(buffer.ifr_name, ETHERNET_INTERFACE_NAME, IFNAMSIZ);
	if (ioctl(s, SIOCGIFINDEX, &buffer) < 0) {
		printf("Error: could not get interface index\n");
		close(s);
		return -1;
	}
	ifindex = buffer.ifr_ifindex;

	if (ioctl(s, SIOCGIFHWADDR, &buffer) < 0) {
		printf("Error: could not get interface address\n");
		close(s);
		return -1;
	}
	memcpy((void*)source, (void*)(buffer.ifr_hwaddr.sa_data),
		ETH_ALEN);

	
	// int i,rc;
 //   	for( i = 0; i < NUM_THREADS; i++ ) {
 //    	//cout <<"creating receive thread, " << i << endl;
 //    	td[i].thread_id = i;
 //    	td[i].message = "hi";
 //    	rc = pthread_create(&threads[i], NULL, eth_receiver_func, (void *)&td[i]);
      
 //     	if (rc) {
 //    	    cout << "Error:unable to create thread," << rc << endl;
 //     	    exit(-1);
 //     	}
 //   	}
	t = thread(eth_receiver_func);
}

string find_mac_address (int dest){
	//parse the mpiMac to figure out which kernel is on which mac address!
	// this part could be done in MPI_init() ----------------
	//cout<<"find mac address" <<endl;
	ifstream myfile;
	vector<string> mac_addresses;
	string line;
	myfile.open ("mpiMacAddresses");
	while ( getline (myfile,line) )
	{
		//cout << line << '\n';
		mac_addresses.push_back(line);
	}
	myfile.close();

	TiXmlDocument doc( "mpiMap.xml" );
	doc.LoadFile();
	TiXmlHandle docHandle( &doc );
	TiXmlElement * fpga = docHandle.FirstChild( "cluster" ).FirstChild("fpga").ToElement();
	vector<string *> kernel_to_mac_ptrs(256);

	int i = 0;
	for(fpga;fpga;fpga = fpga->NextSiblingElement()){
		TiXmlElement * kernel = fpga->FirstChild("kernel")->ToElement();
		for(kernel;kernel;kernel = kernel->NextSiblingElement()){
			const char * temp = kernel->GetText();
			int int_temp = atoi(temp);
			//cout << (int)(*temp - '0') << endl;
			kernel_to_mac_ptrs[int_temp] = &(mac_addresses[i]);
		}
		i++;
	}

	// cout << "here" << endl;
	// for(int i = 0 ; i < kernel_to_mac_ptrs.size();i++)
	// {
	// 	if(kernel_to_mac_ptrs[i])
	// 		cout << i << "  "<< *(kernel_to_mac_ptrs[i]) << endl;
	// }

	// ----------------------------------------------------
	return (*(kernel_to_mac_ptrs[dest]));

}

bool check_packet_for_me(string mac_address, struct ether_header * eh){

	// for(int i = 0; i < mac_address.size(); i++){
	// 	cout << hex << mac_address[i] <<"    " << eh->ether_dhost[i] << endl;
	// }
  //Check the packet is for me
	if (eh->ether_dhost[0] == (mac_address[0] & 0xff)&&
		eh->ether_dhost[1] == (mac_address[1] & 0xff) &&
		eh->ether_dhost[2] == (mac_address[2] & 0xff) &&
		eh->ether_dhost[3] == (mac_address[3] & 0xff) &&
		eh->ether_dhost[4] == (mac_address[4] & 0xff)&&
		eh->ether_dhost[5] == (mac_address[5] & 0xff)) {
		//printf("Correct destination MAC address\n");
		return 1;
	} else {
	// printf("Wrong destination MAC: %x:%x:%x:%x:%x:%x\n",
	// 	eh->ether_dhost[0],
	// 	eh->ether_dhost[1],
	// 	eh->ether_dhost[2],
	// 	eh->ether_dhost[3],
	// 	eh->ether_dhost[4],
	// 	eh->ether_dhost[5]);
		return 0;
	}
}


int send_packet(char* iface, unsigned short proto,const char* dest,
	const unsigned char * data , int data_size){

	//cout << "data_size" << data_size << endl;

	union ethframe frame;
	memcpy(frame.field.header.h_dest, dest, ETH_ALEN);
	memcpy(frame.field.header.h_source, source, ETH_ALEN);
	frame.field.header.h_proto = htons(proto);
	memcpy(frame.field.data, data, data_size);

	unsigned int frame_len = data_size + ETH_HLEN;

	struct sockaddr_ll saddrll;
	memset((void*)&saddrll, 0, sizeof(saddrll));
	saddrll.sll_family = PF_PACKET;   
	saddrll.sll_ifindex = ifindex;
	saddrll.sll_halen = ETH_ALEN;
	memcpy((void*)(saddrll.sll_addr), (void*)dest, ETH_ALEN);

	// if (sendto(s, frame.buffer, frame_len, 0,
	// 	(struct sockaddr*)&saddrll, sizeof(saddrll)) > 0)
	// 	printf("Success!\n");
	// else
	// 	printf("Error, could not send\n");

	sendto(s, frame.buffer, frame_len, 0,(struct sockaddr*)&saddrll, sizeof(saddrll));

//	close(s);

	return 0;
}


string mac_str_to_hex(string mac_address_str){
	vector<string> hex_strs;
	int i = 0;
	while(i < mac_address_str.size()){
		string temp;
		temp+=mac_address_str[i];
		temp+=mac_address_str[i+1];
		i+=3;
		hex_strs.push_back(temp);
	}

	string mac_address_hex;

	for(int i = 0 ; i < hex_strs.size();i++){
		stringstream str;
		str << hex_strs[i];
		int value;
		str >> std::hex >> value;
		mac_address_hex += (unsigned char)value &0xff;
		//cout <<hex<< value <<"  "<< (unsigned int)mac_address_hex[i]<<endl;
	}
	return mac_address_hex;
}

int send_envelope(unsigned int dest, unsigned int count,MPI_DATA_TYPE dataType,int tag){
	union envelope envlp;
	envlp.field.SRC = RANK;
	envlp.field.DEST = dest;
	if(dataType == MPI_INT || dataType == MPI_FLOAT){
		envlp.field.MSG_SIZE = count;
	}
	else if(dataType == MPI_SHORT){
		envlp.field.MSG_SIZE = count*2;
	}
	else if(dataType == MPI_CHAR){
		envlp.field.MSG_SIZE = count*4;
	}
	else{
		return -1;
	}

	envlp.field.PKT_TYPE = C_SYNC_ENV_PACKET;
	envlp.field.TAG = tag;
	if(dataType == MPI_FLOAT)
		envlp.field.DATA_TYPE = FLOAT;
	else if (dataType == MPI_INT)
		envlp.field.DATA_TYPE = INT;

	// find the mac address of the FPGA which contains the rank

	string mac_address;
	mac_address = find_mac_address(dest);
	string mac_address_hex = mac_str_to_hex(mac_address);

	//cout <<"sending to : "<< mac_address_hex <<endl;

	send_packet(ETHERNET_INTERFACE_NAME,ETH_PROTO,mac_address_hex.c_str(),envlp.buffer,sizeof(envlp.buffer));
	time_begin = clock();
	//cout<< sizeof(envlp.buffer) <<endl;
}

int recv_packet(char* iface, unsigned short proto, unsigned char * buffer, int buffer_size){
	int sockfd,sockopt;
	struct ifreq ifopts;  /* set promiscuous mode */
  	struct ifreq if_ip; /* get ip addr */
  	int numbytes;

  	struct ether_header *eh = (struct ether_header *) buffer;


	// if ((sockfd = socket(AF_PACKET, SOCK_RAW, htons(proto))) == -1) {
	// 	perror("listener: socket"); 
	// 	return -1;
	// }

 //  /* Set interface to promiscuous mode - do we need to do this every time? */
	// strncpy(ifopts.ifr_name, iface, IFNAMSIZ-1);
	// ioctl(sockfd, SIOCGIFFLAGS, &ifopts);
	// ifopts.ifr_flags |= IFF_PROMISC;
	// ioctl(sockfd, SIOCSIFFLAGS, &ifopts);
 //  /* Allow the socket to be reused - incase connection is closed prematurely */
	// if (setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR, &sockopt, sizeof sockopt) == -1) {
	// 	perror("setsockopt");
	// 	close(sockfd);
	// 	exit(EXIT_FAILURE);
	// }
 //  /* Bind to device */
	// if (setsockopt(sockfd, SOL_SOCKET, SO_BINDTODEVICE, iface, IFNAMSIZ-1) == -1)  {
	// 	perror("SO_BINDTODEVICE");
	// 	close(sockfd);
	// 	exit(EXIT_FAILURE);
	// }

	repeat: //printf("listener: Waiting to recvfrom...\n");
	numbytes = recvfrom(s, buffer, buffer_size, MSG_DONTWAIT, NULL, NULL);
	//printf("listener: got packet %d bytes\n", numbytes);

	//cout << hex << (int) eh->ether_dhost[0] << endl;

	string my_mac_address;
	my_mac_address = find_mac_address(RANK);
	//cout << my_mac_address <<endl;
	string my_mac_address_hex = mac_str_to_hex(my_mac_address);

	if(check_packet_for_me(my_mac_address_hex,eh)){
		return numbytes;
	}
	else
		return -1;

  /* Check the packet is for me */
	// if (eh->ether_dhost[0] == DEST_MAC0 &&
	// 	eh->ether_dhost[1] == DEST_MAC1 &&
	// 	eh->ether_dhost[2] == DEST_MAC2 &&
	// 	eh->ether_dhost[3] == DEST_MAC3 &&
	// 	eh->ether_dhost[4] == DEST_MAC4 &&
	// 	eh->ether_dhost[5] == DEST_MAC5) {
	// 	printf("Correct destination MAC address\n");
	// } else {
	// printf("Wrong destination MAC: %x:%x:%x:%x:%x:%x\n",
	// 	eh->ether_dhost[0],
	// 	eh->ether_dhost[1],
	// 	eh->ether_dhost[2],
	// 	eh->ether_dhost[3],
	// 	eh->ether_dhost[4],
	// 	eh->ether_dhost[5]);
	// 	ret = -1;
 //    //goto done;
	// }
}

int wait_for_clr2snd(unsigned int dest, unsigned int count,MPI_DATA_TYPE dataType,int tag){ // it needs a timeout mechanism
	unsigned char buffer[ETH_FRAME_LEN];
	union envelope envlp;

	while(1){
		std::lock_guard<std::mutex> guard(myMutex);
		//cout<<".";
		//while(lock);
		//pthread_mutex_lock(&lock);
		//cout<<"c";
		time_end = clock();
		if((double)(time_end - time_begin) / CLOCKS_PER_SEC >= TIMEOUT){
			send_envelope(dest,count,dataType,tag);
		}
		//cout <<(double)(time_end - time_begin) / CLOCKS_PER_SEC<<endl;
		for(list<envelope>::iterator it = clr2snd_list.begin(); it != clr2snd_list.end(); it++){
			if((*it).field.PKT_TYPE == C_CLR2SND_PACKET
			&& (*it).field.DEST == RANK
			&& (*it).field.SRC == dest){
				if((dataType == MPI_FLOAT && (*it).field.DATA_TYPE == FLOAT)
					|| (dataType == MPI_INT && (*it).field.DATA_TYPE == INT)){
					
					
					it = clr2snd_list.erase(it);
					
					return 1;
				}
			}
		}
		//pthread_mutex_unlock(&lock);





		// if(recv_packet(ETHERNET_INTERFACE_NAME,ETH_PROTO,buffer,BUFFER_SIZE)){
		// 	envlp.buffer[0] = buffer[HEADER_OFFSET];
		// 	envlp.buffer[1] = buffer[1+HEADER_OFFSET];
		// 	for(int i = 2; i < ENVELOPE_SIZE; i++){
		// 		envlp.buffer[(ENVELOPE_SIZE-i)-1+2] = buffer[i+HEADER_OFFSET];
		// 		//cout << hex << (int)envlp.buffer[i] <<endl;
		// 	}
		// 	// for(int i = 0; i < ENVELOPE_SIZE; i++){
		// 	// 	cout << hex << (int)envlp.buffer[i] <<endl;
		// 	// }
		// 	if(envlp.field.PKT_TYPE == C_CLR2SND_PACKET && envlp.field.DEST == RANK && envlp.field.SRC == dest){
		// 		cout << "clr2snd" << envlp.field.SRC <<endl;
		// 		return 1;
		// 	}
		// 	else{
		// 		// cout << "pkt type: " <<(int) envlp.field.PKT_TYPE <<endl;
		// 		// cout << "DEST: "<< envlp.field.DEST <<endl;
		// 		if(envlp.field.PKT_TYPE == C_CLR2SND_PACKET){
		// 			clr2snd_array[clr_num] = envlp;
		// 			clr_num++;
		// 			cout << "added to clr2snd list"<<endl;
		// 		}
		// 		else if(envlp.field.PKT_TYPE == C_SYNC_ENV_PACKET){
		// 			request_array[req_num] = envlp;
		// 			req_num++;
		// 			cout << "added to envlp list"<<endl;
		// 		}
	
		// 	}
		// }
	}
	// cout << "src : " << (int) envlp.field.SRC <<endl;
	// cout << "dest : " << (int) envlp.field.DEST <<endl;
	// cout << "MSG_SIZE : " << (int) envlp.field.MSG_SIZE <<endl;
	// cout << "paket type : " << (int) envlp.field.PKT_TYPE <<endl;
	// if(envlp.field.PKT_TYPE == C_CLR2SND_PACKET){
	// 	cout << "CLR2SND" <<endl;
	// }
	// else{
	// 	cout << "not CLR2SND" <<endl;
	// }
}

int send_data(void * buff,unsigned count, MPI_DATA_TYPE dataType,unsigned int dest,int tag){

	unsigned char * buff_char_ptr = (unsigned char *) buff;
	int data_size;
	union envelope envlp;
	envlp.field.SRC = RANK;
	envlp.field.DEST = dest;
	envlp.field.PKT_TYPE = C_DATA_PACKET;
	envlp.field.TAG = tag;
	if(dataType == MPI_FLOAT){
		envlp.field.DATA_TYPE = FLOAT;
		data_size = 4;
	}
	else if(dataType == MPI_INT){
		envlp.field.DATA_TYPE = INT;
		data_size = 4;
	}


	// for(int seq_num = 0; seq_num < ((count*dataType)/ETH_DATA_FRAM_SIZE)+1 ; seq_num++){


	// }

	// find the mac address of the FPGA which contains the rank

	if((count*data_size)+ENVELOPE_SIZE <= ETH_DATA_FRAM_SIZE){
		envlp.field.MSG_SIZE = 0;
		unsigned char * to_send_buffer = new unsigned char[(count*data_size)+ENVELOPE_SIZE];
		for(int i = 0; i < ENVELOPE_SIZE ;i++){
			to_send_buffer[i] = envlp.buffer[i];
		}
		for(int i = ENVELOPE_SIZE ; i < (count*data_size)+ENVELOPE_SIZE;i++)
			to_send_buffer[i] = buff_char_ptr[i - ENVELOPE_SIZE];  

	//for(int i = 0 ; i < count*dataType ; i+= ENVELOPE_SIZE){
		// union envelope envlp;
		// for(int j = 0 ; j < ENVELOPE_SIZE ;j++){
		// 	envlp.buffer[j] = buff_char_ptr[i+j];
		// }

		string mac_address;
		mac_address = find_mac_address(dest);
		string mac_address_hex = mac_str_to_hex(mac_address);

		//cout << "befor send: " <<sizeof(envlp.buffer)<<endl;

		// for(int k = 0 ; k < sizeof(envlp.buffer);k++){
		// 	cout <<k <<"   " << hex << (int)envlp.buffer[k] << endl;
		// }

		//send_packet(ETHERNET_INTERFACE_NAME,ETH_PROTO,mac_address_hex.c_str(),envlp.buffer,sizeof(envlp.buffer));
		send_packet(ETHERNET_INTERFACE_NAME,ETH_PROTO,mac_address_hex.c_str(),to_send_buffer,(count*data_size)+ENVELOPE_SIZE);

	}
	else{
		int seq_num = 0;
		unsigned char to_send_buffer[ETH_DATA_FRAM_SIZE+100];
send_seq:
		for(seq_num; seq_num < ((count*data_size)/(ETH_DATA_FRAM_SIZE-(ENVELOPE_SIZE-2)))+1 ; seq_num++){
			std::lock_guard<std::mutex> guard(myMutex);
			for(list<envelope>::iterator it = error_list.begin(); it != error_list.end(); it++){
				//cout <<hex<< "**********pck type: " << (int)(*it).field.PKT_TYPE  << " d: "<< (int)(*it).field.DEST << " s: " << (int)(*it).field.SRC << " t: "<< (int)(*it).field.DATA_TYPE <<" source: " <<source<<endl;
				if((*it).field.PKT_TYPE == C_RECV_ERROR
				&& (*it).field.DEST == RANK
				&& (*it).field.SRC == dest){
					if((dataType == MPI_FLOAT && (*it).field.DATA_TYPE == FLOAT)
						|| (dataType == MPI_INT && (*it).field.DATA_TYPE == INT)){
						
						it = error_list.erase(it);
						cout << "send error "<< (*it).field.MSG_SIZE << "***************************************" <<endl;
						cin.get();
						seq_num = (*it).field.MSG_SIZE;
						break;
					}
				}
			}



			int k = 0;
			envlp.field.MSG_SIZE = seq_num;
			for(int i = 0; i < ENVELOPE_SIZE ;i++){
				to_send_buffer[i] = envlp.buffer[i];
			} 
			for(k = ENVELOPE_SIZE;; k++){
				if( k >= (ETH_DATA_FRAM_SIZE+2) || (seq_num*(ETH_DATA_FRAM_SIZE - (ENVELOPE_SIZE-2)))+(k - ENVELOPE_SIZE) == (count*data_size)){
					//cout <<"break"<<endl;
					//size = k;
					break;
				}
				//cout << k<<" ";
				to_send_buffer[k] = buff_char_ptr[(seq_num*(ETH_DATA_FRAM_SIZE - (ENVELOPE_SIZE-2)))+(k - ENVELOPE_SIZE)];
				// size = k;
 			}
 			//k++;
			//cout<<seq_num << "after for " <<k<<endl;
			string mac_address;
			mac_address = find_mac_address(dest);
			//cout<<seq_num << "after find_mac_address " <<k<<endl;
			string mac_address_hex = mac_str_to_hex(mac_address);
			//cout << "seq "<<seq_num <<" j:"<<k<<endl;
			send_packet(ETHERNET_INTERFACE_NAME,ETH_PROTO,mac_address_hex.c_str(),to_send_buffer,k); // ??? 
		}
		while(1){
			std::lock_guard<std::mutex> guard(myMutex);
			for(list<envelope>::iterator it = done_list.begin(); it != done_list.end(); it++){
				//cout <<hex<< "**********pck type: " << (int)(*it).field.PKT_TYPE  << " d: "<< (int)(*it).field.DEST << " s: " << (int)(*it).field.SRC << " t: "<< (int)(*it).field.DATA_TYPE <<" source: " <<source<<endl;
				if((*it).field.PKT_TYPE == C_DATA_TRANSMISSION_DONE
				&& (*it).field.DEST == RANK
				&& (*it).field.SRC == dest){
					if((dataType == MPI_FLOAT && (*it).field.DATA_TYPE == FLOAT)
						|| (dataType == MPI_INT && (*it).field.DATA_TYPE == INT)){
						//cout << "done" <<endl;
						it = error_list.erase(it);
						return 1;
					}
				}
			}
			for(list<envelope>::iterator it = error_list.begin(); it != error_list.end(); it++){
				//cout <<hex<< "**********pck type: " << (int)(*it).field.PKT_TYPE  << " d: "<< (int)(*it).field.DEST << " s: " << (int)(*it).field.SRC << " t: "<< (int)(*it).field.DATA_TYPE <<" source: " <<source<<endl;
				if((*it).field.PKT_TYPE == C_RECV_ERROR
				&& (*it).field.DEST == RANK
				&& (*it).field.SRC == dest){
					if((dataType == MPI_FLOAT && (*it).field.DATA_TYPE == FLOAT)
						|| (dataType == MPI_INT && (*it).field.DATA_TYPE == INT)){
						
						it = error_list.erase(it);
						cout << "send error last"<<(*it).field.MSG_SIZE<<" ***************************************" <<endl;
						cin.get();
						seq_num = (*it).field.MSG_SIZE;
						goto send_seq;
					}
				}
			}
		}
	}

	//printf("to send buff: %x %x\n",to_send_buffer[0],to_send_buffer[1]);

	
		//cout<<"buffer size: "<< sizeof(envlp.buffer) <<endl;
	//}

	// for(int i = 0 ; i < count ; i+= dataType){
	// 	if(i < count)
	// 		buf[i] = recv_data(31,0);
	// 	if(i+1 < count)
	// 		buf[i+1] = recv_data(63,32);
	// 	if(i+2 < count)
	// 		buf[i+2] = recv_data(95,64);
	// 	if(i+3 < count)
	// 		buf[i+3] = recv_data(127,96);
	// }
}

int wait_for_envlp(int source, MPI_DATA_TYPE dataType){
	unsigned char buffer[ETH_FRAME_LEN];
	union envelope envlp;

	while(1){
		//while(lock);
		//pthread_mutex_lock(&lock);
		std::lock_guard<std::mutex> guard(myMutex);
		//cout << "e";
		//cout <<request_list.size()<<endl;
		for(list<envelope>::iterator it = request_list.begin(); it != request_list.end(); it++){
			//cout <<hex<< "**********pck type: " << (int)(*it).field.PKT_TYPE  << " d: "<< (int)(*it).field.DEST << " s: " << (int)(*it).field.SRC << " t: "<< (int)(*it).field.DATA_TYPE <<" source: " <<source<<endl;
			if((*it).field.PKT_TYPE == C_SYNC_ENV_PACKET
			&& (*it).field.DEST == RANK
			&& (*it).field.SRC == source){
				if((dataType == MPI_FLOAT && (*it).field.DATA_TYPE == FLOAT)
					|| (dataType == MPI_INT && (*it).field.DATA_TYPE == INT)){
					
					it = request_list.erase(it);
					
					return 1;
				}
			}
		}
		//mu.unlock();
		//pthread_mutex_unlock(&lock);


		// if(recv_packet(ETHERNET_INTERFACE_NAME,ETH_PROTO,buffer,BUFFER_SIZE)){
		// 	for(int i = 0; i < ENVELOPE_SIZE; i++){
		// 		envlp.buffer[i] = buffer[i+HEADER_OFFSET];
		// 		//cout << hex << (int)envlp.buffer[i] <<endl;
		// 	}
		// 	if(envlp.field.PKT_TYPE == C_SYNC_ENV_PACKET && envlp.field.DEST == RANK && envlp.field.SRC == source ){
		// 		cout << "envlp received... " <<endl;
		// 		return 1;
		// 	}
		// 	else{
		// 		// cout << "pkt type: " <<(int) envlp.field.PKT_TYPE <<endl;
		// 		// cout << "DEST: "<< envlp.field.DEST <<endl;
		// 		if(envlp.field.PKT_TYPE == C_CLR2SND_PACKET){
		// 			clr2snd_array[clr_num] = envlp;
		// 			clr_num++;
		// 			cout << "added to clr2snd list"<<endl;
		// 		}
		// 		else if(envlp.field.PKT_TYPE == C_SYNC_ENV_PACKET){
		// 			request_array[req_num] = envlp;
		// 			req_num++;
		// 			cout << "added to envlp list"<<endl;
		// 		}
		// 	}
		// }
	}
}

int send_clr2snd(int dest, MPI_DATA_TYPE dataType){
	union envelope envlp;
	envlp.field.SRC = RANK;
	envlp.field.DEST = dest;
	envlp.field.MSG_SIZE = receiving_size;

	envlp.field.PKT_TYPE = C_CLR2SND_PACKET;
	envlp.field.TAG = 0;
	if(dataType == MPI_FLOAT){
		envlp.field.DATA_TYPE = FLOAT;
		//cout << "### FLOAT ####"<<endl;
	}
	else if (dataType == MPI_INT){
		envlp.field.DATA_TYPE = INT;
		//cout << "### INT ####"<<endl;
	}

	// find the mac address of the FPGA which contains the rank

	string mac_address;
	mac_address = find_mac_address(dest);
	string mac_address_hex = mac_str_to_hex(mac_address);

	//cout <<"sending to : "<< mac_address_hex <<endl;

	send_packet(ETHERNET_INTERFACE_NAME,ETH_PROTO,mac_address_hex.c_str(),envlp.buffer,sizeof(envlp.buffer));
	time_begin = clock();
}

int receive_data(void * buff,unsigned count, MPI_DATA_TYPE dataType,unsigned int source){

	int seq_num = 0;
	bool is_error_sent = 0;
	int data_size;
	if(dataType == MPI_INT){
		data_size = 4;
	}
	else if(dataType == MPI_FLOAT){
		data_size = 4;
	}
	unsigned char * buff_char_ptr = (unsigned char *) buff;

	float temp_buffer[20];
	void * temp_buffer_void = (void *) temp_buffer;
	unsigned char * temp_buffer_char = (unsigned char *) temp_buffer_void;

	std::vector<list<data_packet>::iterator> to_delete;

	while(1){
		//cout << ".";
		//while(lock);
		//pthread_mutex_lock(&lock);
		//mu.lock();
		std::lock_guard<std::mutex> guard(myMutex);
		//cout << "D";
		time_end = clock();
		if((double)(time_end - time_begin) / CLOCKS_PER_SEC >= TIMEOUT){
			send_clr2snd(source, dataType);
			cout << "fuck :D" <<endl;
		}
		for(list<data_packet>::iterator it = data_list.begin(); it != data_list.end(); it++){
			//cout <<"1" <<endl;
			if((*it).envlp.field.PKT_TYPE == C_DATA_PACKET	
			&& (*it).envlp.field.DEST == RANK
			&& (*it).envlp.field.SRC == source){
				//cout <<"2" <<endl;
				if((dataType == MPI_FLOAT && (*it).envlp.field.DATA_TYPE == FLOAT)
					|| (dataType == MPI_INT && (*it).envlp.field.DATA_TYPE == INT)){
					
					if((count*data_size)+ENVELOPE_SIZE <= ETH_DATA_FRAM_SIZE){
						int j;
						for(j = HEADER_OFFSET + ENVELOPE_SIZE ; j < ETH_DATA_FRAM_SIZE+HEADER_OFFSET+2; j++){
							if((j - ENVELOPE_SIZE - HEADER_OFFSET) == (count*data_size)){
								//cout<<count*data_size<<"break"<< (seq_num*(ETH_DATA_FRAM_SIZE - (ENVELOPE_SIZE-2)))+(j - ENVELOPE_SIZE - HEADER_OFFSET) <<endl;
								break;
							}
							buff_char_ptr[(j - ENVELOPE_SIZE - HEADER_OFFSET)] = (*it).buffer[j];
						}
						if((j - ENVELOPE_SIZE - HEADER_OFFSET) == (count*data_size)){
							it = data_list.erase(it);
							goto done;
						}
					}
					else{
						if((*it).envlp.field.MSG_SIZE == seq_num){
							//read it
							int j;
							unsigned char temp_buff[ETH_DATA_FRAM_SIZE];
							unsigned char temp_buff2[ETH_DATA_FRAM_SIZE];
							//cout <<"4" <<endl;
							for(j = HEADER_OFFSET + ENVELOPE_SIZE ; j < ETH_DATA_FRAM_SIZE+HEADER_OFFSET+2; j++){
								if((seq_num*(ETH_DATA_FRAM_SIZE - (ENVELOPE_SIZE-2)))+(j - ENVELOPE_SIZE - HEADER_OFFSET) == (count*data_size)){
									//cout<<count*data_size<<"break"<< (seq_num*(ETH_DATA_FRAM_SIZE - (ENVELOPE_SIZE-2)))+(j - ENVELOPE_SIZE - HEADER_OFFSET) <<endl;
									break;
								}
								buff_char_ptr[(seq_num*(ETH_DATA_FRAM_SIZE - (ENVELOPE_SIZE-2)))+(j - ENVELOPE_SIZE - HEADER_OFFSET)] = (*it).buffer[j];
								// if(dataType == MPI_INT)
								//cout <<"seq: "<<seq_num<< "\tbyte " << j << " : " <<hex << (int)buff_char_ptr[(seq_num*(ETH_DATA_FRAM_SIZE - (ENVELOPE_SIZE-2)))+(j - ENVELOPE_SIZE - HEADER_OFFSET)] << " " << (seq_num*(ETH_DATA_FRAM_SIZE - (ENVELOPE_SIZE-2)))+(j - ENVELOPE_SIZE - HEADER_OFFSET)<<endl;
							}
							//cout <<"out of for "<< (seq_num*(ETH_DATA_FRAM_SIZE - (ENVELOPE_SIZE-2)))+(j - ENVELOPE_SIZE - HEADER_OFFSET) <<endl;
							if((seq_num*(ETH_DATA_FRAM_SIZE - (ENVELOPE_SIZE-2)))+(j - ENVELOPE_SIZE - HEADER_OFFSET) == (count*data_size)){
								it = data_list.erase(it);
								goto done;
							}
							// for(int i = 0 ; i < ETH_DATA_FRAM_SIZE- ENVELOPE_SIZE+2 ;i++){
							// 	temp_buff2[i] = temp_buff[(ETH_DATA_FRAM_SIZE- ENVELOPE_SIZE+2)-i-1];
							// 	cout << "\t \tbyte " << i << " : " <<hex << (int)temp_buff[i] <<endl;
							// }
							seq_num++;
							is_error_sent = 0;
							//cin.get();
						}
						else{
							if(!is_error_sent){
								cout << "Error" <<endl;
								cin.get();
								union envelope envlp;
								envlp.field.SRC = RANK;
								envlp.field.DEST = source;
								envlp.field.MSG_SIZE = seq_num;
							
								envlp.field.PKT_TYPE = C_RECV_ERROR;
								envlp.field.TAG = 0;
								if(dataType == MPI_FLOAT)
									envlp.field.DATA_TYPE = FLOAT;
								else if (dataType == MPI_INT)
									envlp.field.DATA_TYPE = INT;
							
								// find the mac address of the FPGA which contains the rank
							
								string mac_address;
								mac_address = find_mac_address(source);
								string mac_address_hex = mac_str_to_hex(mac_address);
							
								//cout <<"sending to : "<< mac_address_hex <<endl;
							
								send_packet(ETHERNET_INTERFACE_NAME,ETH_PROTO,mac_address_hex.c_str(),envlp.buffer,sizeof(envlp.buffer));
								is_error_sent = 1;
								//it = data_list.erase(it);
							}
						}
					}
					//to_delete.push_back(it);
					it = data_list.erase(it);
					//return 1;
				}
			}
		}
	}
done:
		//cout << "done"<<endl;
		// for(int i = 0 ; i < to_delete.size();i++){
		// 	data_list.erase(to_delete[i]);
		// }
		// to_delete.clear();

		// for(int i = 0; i < 20 ;i++){
		// 	cout <<"temp" << temp_buffer[i] <<endl;
		// }

		//mu.unlock();
		//pthread_mutex_unlock(&lock);
		union envelope envlp;
		envlp.field.SRC = RANK;
		envlp.field.DEST = source;
		envlp.field.MSG_SIZE = seq_num;
		
		envlp.field.PKT_TYPE = C_DATA_TRANSMISSION_DONE;
		envlp.field.TAG = 0;
		if(dataType == MPI_FLOAT)
			envlp.field.DATA_TYPE = FLOAT;
		else if (dataType == MPI_INT)
			envlp.field.DATA_TYPE = INT;
		
		// find the mac address of the FPGA which contains the rank
		
		string mac_address;
		mac_address = find_mac_address(source);
		string mac_address_hex = mac_str_to_hex(mac_address);
		
		//cout <<"sending to : "<< mac_address_hex <<endl;
		
		send_packet(ETHERNET_INTERFACE_NAME,ETH_PROTO,mac_address_hex.c_str(),envlp.buffer,sizeof(envlp.buffer));
		return 1;
}

int MPI_Recv(void * buff,unsigned int count,MPI_DATA_TYPE dataType,
	unsigned int src,int tag,MPI_COMM comm){
	cout << "wait for envlp from " <<src<<endl;
	wait_for_envlp(src,dataType);
	cout << "send clr2snd to " <<src<<endl;
	send_clr2snd(src,dataType);
	cout << "receive data from " <<src<<endl;
	receive_data(buff,count,dataType,src);//this function has problem
	cout << "recv done " <<src<<endl;

	return 1;

}

int MPI_Send(void * buff,unsigned int count,MPI_DATA_TYPE dataType,
	unsigned int dest,int tag,MPI_COMM comm){
	cout << "send envelope to " <<dest<<endl;
	send_envelope(dest,count,dataType,tag);
	cout << "wait for clr2snd from " <<dest<<endl;
	wait_for_clr2snd(dest,count,dataType,tag);
	cout << "send data to " <<dest<<endl;
	send_data(buff,count,dataType,dest,tag);
	cout << "send done " <<dest<<endl;

	return 1;
}

// int main(int argc, char const *argv[])
// {
// 	MPI_Init();
// 	cout <<"data length: " <<ETH_DATA_LEN << "    frame_length: " <<ETH_FRAME_LEN <<endl;
// 	int to_send_array[10];
// 	for(int i = 0 ; i < 10 ;i++)
// 		to_send_array[i] = i;
// 	MPI_Send(to_send_array,10,MPI_INT,1,-1,COMM);
// 	return 0;

// 	// unsigned char buffer[1024];
// 	// recv_packet(ETHERNET_INTERFACE_NAME,ETH_PROTO,buffer,1024);

// 	// for(int i = 0; i < 60 ;i++){
// 	// 	printf("%x\t", buffer[i]);
// 	// }

// 	//send_data(to_send_array,10,MPI_INT,2);
// }


