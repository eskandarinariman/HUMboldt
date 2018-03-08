
INTRODUCTION
================================
This file is the installation and usage guide of four MPI benchmarks:
integrate, jacobi, k-means and md.

These benchmarks were created to run in an embedded MPI environment on
FPGAs and thus can run within a limited amount of memory.  They were
first used in the paper, "Benefits of Adding Hardware Support for
Broadcast and Reduce Operations in MPSoC Applications" by Peng, et
al., which has been accepted to appear in the ACM Transactions on
Reconfigurable Technology and Systems.

The four benchmarks have been tested with ArchES-MPI on a BEE3
board and with Open MPI Version 1.5.5. on an X86 machine with Linux.


INSTALLATION AND RUNNING
================================
1. Build OpenMPI
   The OpenMPI library is available at:

      http://www.open-mpi.org/

   You can build OpenMPI according the attached files retrieved from
   the above web site. For OpenMPI to work, please set the environment
   variables as follows:

      shell$ setenv MPIHOME PathToWhereYouInstalledOpenMPI
      shell$ setenv PATH $MPIHOME/bin:$path
      shell$ setenv LD_LIBRARY_PATH $MPIHOME/lib:$LD_LIBRARY_PATH

2. Unzip uoftmpi.tar.gz

   Download uoftmpi.tar.gz, and execute the following commands:
      shell$ gtar -zxf uoftmpi.tar.gz

   You will get the four benchamrks in four folders: integrate,
   jacobi, k-means, and md. There is a Makefile for each benchmark and
   some comments for them. We factored out some constants into a
   file called common.h in the folder common.

3. Compiling the four benchmarks

   In the folder of each benchmark, execute the following command:
   shell$ make

4. Run OpenMPI with the four benchmarks:

   In the folder of each benchmark, execute run commands, for example:
      shell$ mpirun -n 2 integrate
 
