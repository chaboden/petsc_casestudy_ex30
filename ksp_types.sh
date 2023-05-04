#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=10:00
#SBATCH --partition=coc
#SBATCH --job-name=ex30
#SBATCH --output=a.out

echo "---TEST OF ALL DIFERENT KSP_TYPES WITH FIXED PROBLEM SIZE AND STANDARD PRECONDITIONER/RHEOLOGY---\n"

echo "---START OF EXECUTION---\n"

mpiexec ./ex30 -ni 40 -log_view -ksp_converged_reason -ivisc 3 -ksp_type cg > results/cg

mpiexec ./ex30 -ni 40 -log_view -ksp_converged_reason -ivisc 3 -ksp_type bicg > results/bicg

mpiexec ./ex30 -ni 40 -log_view -ksp_converged_reason -ivisc 3 -ksp_type gmres > results/gmres

mpiexec ./ex30 -ni 40 -log_view -ksp_converged_reason -ivisc 3 -ksp_type fgmres > results/fgmres

mpiexec ./ex30 -ni 40 -log_view -ksp_converged_reason -ivisc 3 -ksp_type dgmres > results/dgmres

mpiexec ./ex30 -ni 40 -log_view -ksp_converged_reason -ivisc 3 -ksp_type gcr > results/gcr

mpiexec ./ex30 -ni 40 -log_view -ksp_converged_reason -ivisc 3 -ksp_type bcgs > results/bcgs

mpiexec ./ex30 -ni 40 -log_view -ksp_converged_reason -ivisc 3 -ksp_type cgs > results/cgs

mpiexec ./ex30 -ni 40 -log_view -ksp_converged_reason -ivisc 3 -ksp_type tfqmr > results/tfqmr
