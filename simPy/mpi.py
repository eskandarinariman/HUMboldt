import sys
import os
import math
import inspect
sys.path.append(os.environ['SONAR_PATH'] + '/jsonGen')
sys.path.append(os.environ['GALAPAGOS_PATH'] + '/simPy')
from ethernet import Ethernet
from galapagosNet import GalapagosNet


#packet types

C_SYNC_ENV_PACKET_VERILOG = "8\'h0"
C_CLR2SND_PACKET_VERILOG = "8\'h1"
C_DATA_PACKET_VERILOG = "8\'h2"
C_ASYNC_ENV_PACKET_VERILOG = "8\'h3"
C_RECV_ERROR_VERILOG = "8\'h4"
C_DATA_TRANSMISSION_DONE_VERILOG = "8\'h5"

C_SYNC_ENV_PACKET = "0x00"
C_CLR2SND_PACKET = "0x01"
C_DATA_PACKET = "0x02"
C_ASYNC_ENV_PACKET = "0x03"
C_RECV_ERROR = "0x04"
C_DATA_TRANSMISSION_DONE = "0x05"

class mpiRank(GalapagosNet):
    
    def __init__(self, comm, parameters):
        GalapagosNet.__init__(self, comm, parameters)
        self.sendParameters['prefix'] = '0x00' + self.sendParameters['prefix'][2:]
        for mac_entry in self.macTable:
            self.macTable[mac_entry] = '0x00' + self.macTable[mac_entry][2:]

    def setRankDst(self, rank):
        GalapagosNet.setRankDst(self, rank)
        self.send.setPrefix('0x00' + rank[2:])
    
    def setRankSrc(self, rank):
        GalapagosNet.setRankSrc(self, rank)
        self.recv.setPrefix('0x00' + rank[2:])


    def waitForHeader(self, transName, packetType):
        GalapagosNet.waitForHeader(self, transName + '_ETH_HEADER')

        for dictItem in self.recv.parameters['channels']:
            if dictItem['type'] == 'tdata':
                dataName = self.recv.name + '_' + dictItem['name']
            if dictItem['type'] == 'tvalid':
                validName = self.recv.name + '_' + dictItem['name']
            if dictItem['type'] == 'tready':
                readyName = self.recv.name + '_' + dictItem['name']


        #the destination rank is the send rank src (as we are reading from recv)
        condition = (
                    "wait(" + dataName + "[31:24] == " + packetType + " && " 
                    + dataName + "[23:16] == 8'h" + self.sendParameters['dst_rank'][2:] + " && " 
                    + dataName + "[7:0] == 8'h" + self.sendParameters['src_rank'][2:] + " && " 
                    + validName + " && " 
                    + readyName + ");"
                    )
        self.addWait({"key" : transName + '_MPI_HEADER', "condition": condition})


    def getHeader(self, packetType, size): 
        
        binArray = GalapagosNet.getHeader(self) #get ethernet header
        binArray.extend(bytearray.fromhex('01')) #1 byte type (only float supported)
        binArray.extend(bytearray.fromhex('00')) #1 byte tag
        binArray.extend(bytearray.fromhex(format(size, '06x'))) #3 byte size
        binArray.extend(bytearray.fromhex(packetType[2:])) #1 byte type
        binArray.extend(bytearray.fromhex(self.sendParameters['src_rank'][2:])) #1 byte send rank src
        binArray.extend(bytearray.fromhex(self.sendParameters['dst_rank'][2:])) #1 byte send rank dst

        return binArray

    def mpi_send(self, binData, transName, rank, waitForDone= 1):

        self.setRankDst('0x00' + rank[2:])
        self.addMacro(transName + '_C_SYNC_ENV_PACKET')
        self.binToStream(self.getHeader(C_SYNC_ENV_PACKET, len(binData) >> 2), '0x00' + rank[2:])
        self.waitForHeader(transName + '_C_CLR2SND_PACKET', C_CLR2SND_PACKET_VERILOG)

        binToSend = self.getHeader(C_DATA_PACKET, len(binData))
        binToSend.extend(binData) 
        self.addMacro(transName + '_C_DATA_PACKET')
        self.binToStream(binToSend, '0x00' + rank[2:])

        if waitForDone == 1:
            self.waitForHeader(transName + '_DONE', C_DATA_TRANSMISSION_DONE_VERILOG)

    
    def mpi_recv(self, size, transName, rank):
        
        self.setRankDst('0x00' + rank[2:])
        self.waitForHeader(transName + '_C_SYNC_ENV_PACKET', C_SYNC_ENV_PACKET_VERILOG)
        self.binToStream(self.getHeader(C_CLR2SND_PACKET, size), '0x00' + rank[2:])
        self.addMacro(transName + '_C_DATA_PACKET')



#test for this module
if __name__=="__main__":
    
    
    #writing random garbage data to test.txt
    with open("test_axis.bin", "wb") as binary_file:
        num_bytes_written = binary_file.write(b'\xDE\xAD\xBE\xEF\xFA\xCE\xFA\xCE')
        num_bytes_written = binary_file.write(b'\x11\x22\x33\x44\x55\x66\x77\x88')
        num_bytes_written = binary_file.write(b'\x00\xaa\xbb\xcc\xdd\xee\xff\x12')
        num_bytes_written = binary_file.write(b'\x34\x56\x78')
    
    

    #reading back random garbage data from test.txt
    with open("test_axis.bin", "rb") as binary_file:
        data = binary_file.read()
   
    #now have data in byte array
    dataArray = bytearray()
    dataArray.extend(data)
    



    rank0 = mpiRank('ethernet', {"name": {"output" : "axisIn", "input" : "axisOut"},
                     "mac_table": {"0x112233445566":"0x01", "0xaabbccddeeff":"0x00"},
                     "rank": "0x00"
                })
    rank0.mpi_send(dataArray, 'first_send', "0x01")
    rank0.mpi_recv(10, 'first_recv', "0x01")

    retList = rank0.getDict()
    print "Printing the Dict for binary transaction"
    for item in retList:
        print item
