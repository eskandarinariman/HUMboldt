############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project integrate
set_top integrate
add_files MPI.h
add_files common.h
add_files integrate.cpp
open_solution "solution1"
set_part {xcku115-flva1517-2-e} -tool vivado
create_clock -period 5 -name default
#source "./integrate/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
