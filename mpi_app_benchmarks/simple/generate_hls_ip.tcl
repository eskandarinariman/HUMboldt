#userIP
cd userIP
set MPI_HEADERS_DIR "../HMPI/HLS_lib/"

open_project simple 
set_top simple 
add_files ../HMPI/mpi_app_benchmarks/simple/hls/simple.cpp -cflags "-I ${MPI_HEADERS_DIR} "
open_solution "solution1"
set_part {xcku115-flva1517-2-e}
create_clock -period 5 -name default
config_rtl -encoding onehot
csynth_design
export_design -rtl verilog -format ip_catalog
close_project
