############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
cd userIP


# open_project heartBeat 
# set_top heartBeat
# add_files ../hlsSources/srcs/heartBeat.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# source "../hlsSources/directives/heartBeat.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project


# open_project axiStreamGate 
# set_top axiStreamGate
# add_files ../hlsSources/srcs/axiStreamGate.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# source "../hlsSources/directives/axiStreamGate.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project reverseEndian64 
# set_top reverseEndian64
# add_files ../hlsSources/srcs/reverseEndian64.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# source "../hlsSources/directives/reverseEndian64.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project


# open_project fireWall64
# set_top fireWall64
# add_files ../hlsSources/srcs/fireWall64.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# source "../hlsSources/directives/fireWall64.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project fireWall64_2
# set_top fireWall64_2
# add_files ../hlsSources/srcs/fireWall64_2.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# source "../hlsSources/directives/fireWall64_2.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project packetFormatter_hardcode_64 
# set_top packetFormatter_hardcode_64
# add_files ../hlsSources/srcs/packetFormatter_hardcode_64.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# source "../hlsSources/directives/packetFormatter_hardcode_64.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project


# if MPI is enabled, following IPs will be generated

# open_project NFR
# set_top NFR
# add_files ../HMPI/HLS_lib/NFR.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project


# open_project FNR
# set_top FNR
# add_files ../HMPI/HLS_lib/FNR.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project


# #userIP
set MPI_HEADERS_DIR "./HLS_lib/"

open_project md1
set_top md1
add_files ../HMPI/mpi_app_benchmarks/HMPI_md/hls/md1.cpp -cflags "-I ${MPI_HEADERS_DIR} "
open_solution "solution1"
set_part {xcku115-flva1517-2-e}
create_clock -period 5 -name default
config_rtl -encoding onehot
#source "../hlsSources/directives/roundRobin.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
close_project

# open_project md2
# set_top md2
# add_files ../HMPI/mpi_app_benchmarks/HMPI_md/hls/md2.cpp -cflags "-I ${MPI_HEADERS_DIR} "
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank2
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project md3
# set_top md3
# add_files ../HMPI/mpi_app_benchmarks/HMPI_md/hls/md3.cpp -cflags "-I ${MPI_HEADERS_DIR} "
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank3
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project md4
# set_top md4
# add_files ../HMPI/mpi_app_benchmarks/HMPI_md/hls/md4.cpp -cflags "-I ${MPI_HEADERS_DIR} "
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank4
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project md5
# set_top md5
# add_files ../HMPI/mpi_app_benchmarks/HMPI_md/hls/md5.cpp -cflags "-I ${MPI_HEADERS_DIR} "
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank5
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project md6
# set_top md6
# add_files ../HMPI/mpi_app_benchmarks/HMPI_md/hls/md6.cpp -cflags "-I ${MPI_HEADERS_DIR} "
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank6
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project md7
# set_top md7
# add_files ../HMPI/mpi_app_benchmarks/HMPI_md/hls/md7.cpp -cflags "-I ${MPI_HEADERS_DIR} "
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank7
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project md8
# set_top md8
# add_files ../HMPI/mpi_app_benchmarks/HMPI_md/hls/md8.cpp -cflags "-I ${MPI_HEADERS_DIR} "
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank8
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project md9
# set_top md9
# add_files ../HMPI/mpi_app_benchmarks/HMPI_md/hls/md9.cpp -cflags "-I ${MPI_HEADERS_DIR} "
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank9
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project md10
# set_top md10
# add_files ../HMPI/mpi_app_benchmarks/HMPI_md/hls/md10.cpp -cflags "-I ${MPI_HEADERS_DIR} "
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank10
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project md11
# set_top md11
# add_files ../HMPI/mpi_app_benchmarks/HMPI_md/hls/md11.cpp -cflags "-I ${MPI_HEADERS_DIR} "
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank11
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project md12
# set_top md12
# add_files ../HMPI/mpi_app_benchmarks/HMPI_md/hls/md12.cpp -cflags "-I ${MPI_HEADERS_DIR} "
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank12
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project md13
# set_top md13
# add_files ../HMPI/mpi_app_benchmarks/HMPI_md/hls/md13.cpp -cflags "-I ${MPI_HEADERS_DIR} "
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank13
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project md14
# set_top md14
# add_files ../HMPI/mpi_app_benchmarks/HMPI_md/hls/md14.cpp -cflags "-I ${MPI_HEADERS_DIR} "
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank14
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project md15
# set_top md15
# add_files ../HMPI/mpi_app_benchmarks/HMPI_md/hls/md15.cpp -cflags "-I ${MPI_HEADERS_DIR} "
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank15
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project


# open_project packetMaker
# set_top packetMaker
# add_files ../hlsSources/srcs/packetMaker.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# source "../hlsSources/directives/packetMaker.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project packetMask
# set_top packetMask
# add_files ../hlsSources/srcs/packetMask.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# source "../hlsSources/directives/packetMask.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project roundRobin 
# set_top roundRobin
# add_files ../hlsSources/srcs/roundRobin.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project sender
# set_top sender
# add_files ../hlsSources/srcs/sender.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project recver 
# set_top recver
# add_files ../hlsSources/srcs/recver.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project rank0
# set_top rank0
# add_files ../hlsSources/srcs/rank0.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank0
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project rank1 
# set_top rank1
# add_files ../hlsSources/srcs/rank1.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank1
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project rank2 
# set_top rank2
# add_files ../hlsSources/srcs/rank2.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank2
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project rank3
# set_top rank3
# add_files ../hlsSources/srcs/rank3.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank3
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project rank4 
# set_top rank4
# add_files ../hlsSources/srcs/rank4.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank4
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project rank5 
# set_top rank5
# add_files ../hlsSources/srcs/rank5.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank5
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project rank6
# set_top rank6
# add_files ../hlsSources/srcs/rank6.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank6
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project rank7
# set_top rank7
# add_files ../hlsSources/srcs/rank7.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank7
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

#  open_project rank8
#  set_top rank8
#  add_files ../hlsSources/srcs/rank8.cpp
#  open_solution "solution1"
#  set_part {xcku115-flva1517-2-e}
#  create_clock -period 5 -name default
#  config_rtl -encoding onehot -prefix rank8
#  #source "../hlsSources/directives/roundRobin.tcl"
#  #csim_design
#  csynth_design
#  #cosim_design
#  export_design -rtl verilog -format ip_catalog
#  close_project

#  open_project rank9
#  set_top rank9
#  add_files ../hlsSources/srcs/rank9.cpp
#  open_solution "solution1"
#  set_part {xcku115-flva1517-2-e}
#  create_clock -period 5 -name default
#  config_rtl -encoding onehot -prefix rank9
#  #source "../hlsSources/directives/roundRobin.tcl"
#  #csim_design
#  csynth_design
#  #cosim_design
#  export_design -rtl verilog -format ip_catalog
#  close_project

#  open_project rank10
#  set_top rank10
#  add_files ../hlsSources/srcs/rank10.cpp
#  open_solution "solution1"
#  set_part {xcku115-flva1517-2-e}
#  create_clock -period 5 -name default
#  config_rtl -encoding onehot -prefix rank10
#  #source "../hlsSources/directives/roundRobin.tcl"
#  #csim_design
#  csynth_design
#  #cosim_design
#  export_design -rtl verilog -format ip_catalog
#  close_project

#  open_project rank11 
#  set_top rank11
#  add_files ../hlsSources/srcs/rank11.cpp
#  open_solution "solution1"
#  set_part {xcku115-flva1517-2-e}
#  create_clock -period 5 -name default
#  config_rtl -encoding onehot -prefix rank11
#  #source "../hlsSources/directives/roundRobin.tcl"
#  #csim_design
#  csynth_design
#  #cosim_design
#  export_design -rtl verilog -format ip_catalog
#  close_project

# open_project rank12
# set_top rank12
# add_files ../hlsSources/srcs/rank12.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank12
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project rank13
# set_top rank13
# add_files ../hlsSources/srcs/rank13.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank13
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project rank14 
# set_top rank14
# add_files ../hlsSources/srcs/rank14.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank14
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project rank15
# set_top rank15
# add_files ../hlsSources/srcs/rank15.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix rank15
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project

# open_project tester 
# set_top tester
# add_files ../hlsSources/srcs/tester.cpp
# open_solution "solution1"
# set_part {xcku115-flva1517-2-e}
# create_clock -period 5 -name default
# config_rtl -encoding onehot -prefix tester
# #source "../hlsSources/directives/roundRobin.tcl"
# #csim_design
# csynth_design
# #cosim_design
# export_design -rtl verilog -format ip_catalog
# close_project



#open_project dhcp_client 
#set_top dhcp_client
#add_files ../hlsSources/networkingSources/dhcp_client/dhcp_client.cpp
#open_solution "solution1"
#set_part {xcku115-flva1517-2-e}
#create_clock -period 5 -name default
#csynth_design
#export_design -format ip_catalog -display_name "DHCP Client" -description "DHCP Client to be used with the Xilinx Labs TCP & UDP offload engines." -vendor "xilinx.labs" -version "1.04"
#
#open_project icmp_server 
#set_top icmp_server
#add_files ../hlsSources/networkingSources/icmp_server/icmp_server.cpp
#open_solution "solution1"
#set_part {xcku115-flva1517-2-e}
#create_clock -period 5 -name default
#csynth_design
#export_design -format ip_catalog -display_name "ICMP Server" -vendor "xilinx.labs" -version "1.67"
#
#open_project ip_handler
#set_top ip_handler
#add_files ../hlsSources/networkingSources/ip_handler/ip_handler.cpp
#open_solution "solution1"
#set_part {xcku115-flva1517-2-e}
#create_clock -period 5 -name default
#csynth_design
#export_design -format ip_catalog -display_name "IP Handler for 10G TCP Offload Engine" -vendor "xilinx.labs" -version "1.15"
#
#
#open_project udpAppMux 
#set_top udpAppMux
#add_files ../hlsSources/networkingSources/udp/udpAppMux/udpAppMux.cpp
#open_solution "solution1"
#set_part {xcku115-flva1517-2-e}
#create_clock -period 5 -name default
#csynth_design
#export_design -format ip_catalog -display_name "UDP App Multiplexer for DHCP" -description "This module enables the connection of both the DHCP server and an additional application to the UDP offload engine, granted the DHCP server uses the standard ports." -vendor "xilinx.labs" -version "1.05"


#open_project udp 
#set_top udp
#add_files ../hlsSources/networkingSources/udp/udpCore/sources/udp.cpp
#open_solution "solution1"
#set_part {xcku115-flva1517-2-e}
#create_clock -period 6.66 -name default
#csynth_design
#export_design -format ip_catalog -display_name "10G UDP Offload Engine" -description "UDP Offload Engine supporting 10Gbps line rate" -vendor "xilinx.labs" -version "1.31"
#
#open_project udpLoopback 
#set_top udpLoopback
#add_files ../hlsSources/networkingSources/udp/udpLoopback/udpLoopback.cpp
#open_solution "solution1"
#set_part {xcku115-flva1517-2-e}
#create_clock -period 5 -name default
#csynth_design
#export_design -format ip_catalog -display_name "10G UDP Core Loopback module " -description "This traffic sink can be used for testing both paths of the XIR labs 10G UDP core. It loops the Rx data directly back to the Tx side." -vendor "xilinx.labs" -version "1.10"




quit
