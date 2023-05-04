#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=10:00
#SBATCH --partition=coc
#SBATCH --job-name=ex30
#SBATCH --output=a.out

echo "---USING RHEOLOGY 0, KSP_TYPE BICG AND PC_TYPE ASM, CHANGING PROBLEM SIZE---\n"
echo "---START OF EXECUTION---\n"

echo "---START OF PROBLEM SIZE 10---\n"
mpiexec ./ex30 -ni 10 -ts_view -log_view -ksp_converged_reason -ivisc 0 -ksp_type bicg -pc_type asm > bicg_results/problem_size_10
echo "---START OF PROBLEM SIZE 20---\n"
mpiexec ./ex30 -ni 20 -log_view -ksp_converged_reason -ivisc 0 -ksp_type bicg -pc_type asm > bicg_results/problem_size_20
echo "---START OF PROBLEM SIZE 30---\n"
mpiexec ./ex30 -ni 30 -log_view -ksp_converged_reason -ivisc 0 -ksp_type bicg -pc_type asm > bicg_results/problem_size_30
echo "---START OF PROBLEM SIZE 40---\n"
mpiexec ./ex30 -ni 40 -log_view -ksp_converged_reason -ivisc 0 -ksp_type bicg -pc_type asm > bicg_results/problem_size_40
echo "---START OF PROBLEM SIZE 50---\n"
mpiexec ./ex30 -ni 50 -log_view -ksp_converged_reason -ivisc 0 -ksp_type bicg -pc_type asm > bicg_results/problem_size_50
echo "---START OF PROBLEM SIZE 60---\n"
mpiexec ./ex30 -ni 60 -log_view -ksp_converged_reason -ivisc 0 -ksp_type bicg -pc_type asm > bicg_results/problem_size_60
echo "---START OF PROBLEM SIZE 70---\n"
mpiexec ./ex30 -ni 70 -log_view -ksp_converged_reason -ivisc 0 -ksp_type bicg -pc_type asm > bicg_results/problem_size_70
echo "---START OF PROBLEM SIZE 80---\n"
mpiexec ./ex30 -ni 80 -log_view -ksp_converged_reason -ivisc 0 -ksp_type bicg -pc_type asm > bicg_results/problem_size_80
echo "---START OF PROBLEM SIZE 90---\n"
mpiexec ./ex30 -ni 90 -log_view -ksp_converged_reason -ivisc 0 -ksp_type bicg -pc_type asm > bicg_results/problem_size_90
echo "---START OF PROBLEM SIZE 100---\n"
mpiexec ./ex30 -ni 100 -log_view -ksp_converged_reason -ivisc 0 -ksp_type bicg -pc_type asm > bicg_results/problem_size_100
