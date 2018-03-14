############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project jacobi
set_top jacobi
add_files jacobi_parallel_simple.cpp
add_files common.h
add_files MPI.h
open_solution "solution1"
set_part {xcku115-flva1517-2-e} -tool vivado
create_clock -period 5 -name default
#source "./jacobi/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
