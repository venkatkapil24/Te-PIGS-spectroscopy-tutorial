
mace_run_train \
    --name="TePIGS_model" \
    --train_file="../1_dataset_curation/dataset.xyz" \
    --valid_file="../1_dataset_curation/dataset.xyz" \
    --test_file="../1_dataset_curation/dataset.xyz" \
    --E0s='average' \
    --model="MACE" \
    --hidden_irreps='64x0e' \
    --r_max=3.0 \
    --batch_size=1 \
    --max_num_epochs=10 \
    --ema \
    --ema_decay=0.99 \
    --amsgrad \
    --restart_latest \
    --device=cpu \
    --forces_key='delta_force' \
    --energy_weight=0.0 \
    --scaling='no_scaling'
