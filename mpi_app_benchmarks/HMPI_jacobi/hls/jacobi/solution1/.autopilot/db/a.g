#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/eskand38/HMPI/mpi_app_benchmarks/HMPI_jacobi/hls/jacobi/solution1/.autopilot/db/a.g.bc ${1+"$@"}
