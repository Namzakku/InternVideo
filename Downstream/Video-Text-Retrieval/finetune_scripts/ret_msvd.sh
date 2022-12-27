# srun -p video --gres=gpu:4 --cpus-per-task=64 --quotatype=auto -N1 --job-name=ret_msvd \
python -m torch.distributed.launch --nproc_per_node=4 main_task_retrieval.py  \
    --do_train \
    --num_thread_reader=8 \
    --n_display=50 \
    --epochs=5 \
    --lr=1e-4 \
    --coef_lr=1e-3 \
    --batch_size=128 \
    --batch_size_val=128 \
    --features_path="" \
    --data_path="./data/MSVD/" \
    --datatype="msvd" \
    --max_words=32 \
    --max_frames=12 \
    --feature_framerate=1 \
    --freeze_layer_num=0 \
    --pretrained_clip_name="ViT-B/16" \
    --slice_framepos=2 \
    --loose_type \
    --linear_patch=2d \
    --interaction=no \
    --sim_header="meanP" \
    --output_dir=""
