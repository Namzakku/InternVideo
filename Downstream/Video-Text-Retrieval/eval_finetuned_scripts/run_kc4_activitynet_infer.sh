# srun -p video --gres=gpu:1 --cpus-per-task=16 --quotatype=reserved -N1 --job-name=infer_anet \
python -u -m inference \
    --do_eval \
    --num_thread_reader=8 \
    --n_display=50 \
    --batch_size_val=16 \
    --data_path="./data/ActivityNet/" \
    --features_path="" \
    --datatype="activity" \
    --max_words=77 \
    --max_frames=64 \
    --feature_framerate=1 \
    --pretrained_clip_name="ViT-L/14" \
    --slice_framepos=2 \
    --loose_type \
    --linear_patch=2d \
    --sim_header=meanP \
    --freeze_layer_num=0 \
    --clip_evl \
    --output_dir="./log/msvd_kc4_bs64_vitl14/inference" \
    --finetuned_path="./log/msvd_kc4_bs64_vitl14/pytorch_model.bin" \
    --pretrained_path="" \
    --mergeclip=True \