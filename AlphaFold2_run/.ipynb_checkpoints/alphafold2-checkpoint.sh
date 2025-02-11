python3 docker/run_docker.py \
  --fasta_paths=/blue/hmedeiros/moralesmurallesm/PruebaAlphaFold/rcsb_pdb_1DPX.fasta \
  --max_template_date=2021-11-01 \
  --model_preset=monomer \
  --data_dir=$DOWNLOAD_DIR \
  --output_dir=/blue/hmedeiros/moralesmurallesm/PruebaAlphaFold/results
