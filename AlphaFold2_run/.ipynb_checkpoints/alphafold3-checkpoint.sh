#!/bin/bash
#SBATCH --partition=gpu
#SBATCH --constraint=a100
#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --gpus=1
#SBATCH --mem=300gb
#SBATCH --time=168:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=moralesmurallesm@ufl.edu

date;hostname;pwd

module load alphafold/2.3.1 

alphafold_full_db.sh \
    --fasta_paths=/blue/hmedeiros/moralesmurallesm/PruebaAlphaFold/rcsb_pdb_1CLE.fasta \
    --output_dir=/blue/hmedeiros/moralesmurallesm/PruebaAlphaFold/results \
    --max_template_date=2020-05-14 \
    --use_gpu_relax=1

date
