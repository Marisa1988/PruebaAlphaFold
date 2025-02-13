#!/bin/bash
#SBATCH --partition=gpu
#SBATCH --constraint=a100
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --gpus=1
#SBATCH --mem=300gb
#SBATCH --time=168:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=moralesmurallesm@ufl.edu

date;hostname;pwd

module load alphafold/2.3.1 

alphafold_full_db.sh \
    --fasta_paths=/blue/hmedeiros/moralesmurallesm/PruebaAlphaFold/AlphaFold2_run/3TGLM3.fasta,/blue/hmedeiros/moralesmurallesm/PruebaAlphaFold/AlphaFold2_run/3TGLM4.fasta,/blue/hmedeiros/moralesmurallesm/PruebaAlphaFold/AlphaFold2_run/3TGLM5.fasta,/blue/hmedeiros/moralesmurallesm/PruebaAlphaFold/AlphaFold2_run/3TGLM6.fasta,/blue/hmedeiros/moralesmurallesm/PruebaAlphaFold/AlphaFold2_run/3TGLM7.fasta \
    --output_dir=/blue/hmedeiros/moralesmurallesm/PruebaAlphaFold/AlphaFold2_res \
    --max_template_date=2020-05-14 \
    --use_gpu_relax=1

date