 $INPUT_FASTA_DIR \
    $TEMPLATE_MMCIF_DIR 
    --output_dir $OUTPUT_DIR \
    --config_preset model_1_ptm \
    --uniref90_database_path $BASE_DATA_DIR/uniref90 \
    --mgnify_database_path $BASE_DATA_DIR/mgnify/mgy_clusters_2018_12.fa \
    --pdb70_database_path $BASE_DATA_DIR/pdb70 \
    --uniclust30_database_path $BASE_DATA_DIR/uniclust30/uniclust30_2018_08/uniclust30_2018_08 \
    --bfd_database_path $BASE_DATA_DIR/bfd/bfd_metaclust_clu_complete_id30_c90_final_seq.sorted_opt \
    --model_device "cuda:0" 