#!/bin/bash
#SBATCH --partition=gpu
#SBATCH --constraint=a100
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --gpus=1
#SBATCH --mem=300gb
#SBATCH --time=96:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=moralesmurallesm@ufl.edu

date;hostname;pwd

module load alphafold/2.3.1 

python3 docker/run_docker.py \
  --fasta_paths=/blue/hmedeiros/moralesmurallesm/PruebaAlphaFold/rcsb_pdb_1DPX.fasta \
  --max_template_date=2021-11-01 \
  --model_preset=monomer \
  --data_dir=$DOWNLOAD_DIR \
  --output_dir=/blue/hmedeiros/moralesmurallesm/PruebaAlphaFold/results

date
