############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
cd userIP




open_project application_bridge
set_top application_bridge
add_files ../HMPI/HLS_lib/application_bridge.cpp
#add_files -tb test_echo_server_application.cpp
open_solution "solution1"
set_part {xcku115-flva1517-2-e}
create_clock -period 6.4 -name default
config_interface -expose_global 
#csim_design -clean -setup
csynth_design
export_design -format ip_catalog -display_name "Application Bridge" 


cd ..
