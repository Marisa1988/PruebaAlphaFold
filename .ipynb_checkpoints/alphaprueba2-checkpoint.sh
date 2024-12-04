#!/bin/bash
#SBATCH --partition=gpu
#SBATCH --constraint=a100
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --gpus=1
#SBATCH --mem=300gb
#SBATCH --time=96:00:00

date;hostname;pwd

module load alphafold

alphafold_full_db.sh \

    --fasta_paths=${HPC_ALPHAFOLD_REF}/test.fasta \

    --output_dir=~/scratch \

    --max_template_date=2020-05-14 \

    --use_gpu_relax=1

date
