#!/bin/bash
#SBATCH --job-name no_rst_prod_amber
#SBATCH -N1 --ntasks-per-node=4
#SBATCH --cpus-per-task=8
#SBATCH --time=23:59:59
#SBATCH --account=IscrB_EDR 
#SBATCH --partition=boost_usr_prod
#SBATCH --gres=gpu:4

module purge
module load profile/lifesc
module load zlib/1.2.13--gcc--11.3.0
module load openmpi/4.1.4--gcc--11.3.0-cuda-11.8 
module load  cuda/11.8
module load amber/2022

INPUT=prod
REF=../parm/RhoA_wt_wat
OUTPUT=prod


export CUDA_VISIBLE_DEVICES="0"
export OMP_NUM_THREADS=1

cp ${rstrt} $SLURM_SUBMIT_DIR/.
# go to submission dir
cd $SLURM_SUBMIT_DIR

$AMBERHOME/bin/pmemd.cuda -O -i ${INPUT}.in -o ${OUTPUT}.out -p ${REF}.parm7 -c ${PREV}.rst7 -ref ${PREV}.rst7 -r ${OUTPUT}.rst7 -x ${OUTPUT}.nc 
