#userIP
cd userIP
set MPI_HEADERS_DIR "../HMPI/HLS_lib/"

open_project kmeans_0
set_top kmeans_0
add_files ../HMPI/mpi_app_benchmarks/HMPI_kmeans/hls/kmeans_0.cpp -cflags "-I ${MPI_HEADERS_DIR} "
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


open_project kmeans
set_top kmeans
add_files ../HMPI/mpi_app_benchmarks/HMPI_kmeans/hls/kmeans.cpp -cflags "-I ${MPI_HEADERS_DIR} "
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
