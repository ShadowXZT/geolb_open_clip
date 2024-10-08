# specify which GPUs you want to use.
export CUDA_VISIBLE_DEVICES=4

# set the training args
torchrun --nproc_per_node 1 -m src.open_clip_train.main \
    --batch-size 128 \
    --precision amp \
    --workers 8 \
    --report-to tensorboard \
    --save-frequency 1 \
    --dataset-type csv \
    --train-data="/home/xshadow/Datasets/remote_clip/csv_file/train/Seg-4.csv"  \
    --val-data="/home/xshadow/Datasets/remote_clip/csv_file/test/ucm_test.csv"  \
    --csv-img-key filename \
    --csv-caption-key title \
    --warmup 1000 \
    --lr=1e-6 \
    --wd=0.1 \
    --epochs=16 \
    --siglip \
    --model GeoLB-ViT-B-16-SigLIP \
    --pretrained webli
