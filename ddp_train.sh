torchrun --nproc-per-node 2  src/open_clip_train/main.py \
    --save-frequency 1 \
    --zeroshot-frequency 1 \
    --report-to tensorboard \
    --train-data="/home/xshadow/Datasets/remote_clip/csv_file/train/Seg-4.csv"  \
    --val-data="/home/xshadow/Datasets/remote_clip/csv_file/test/ucm_test.csv"  \
    --csv-img-key filename \
    --csv-caption-key title \
    --warmup 10000 \
    --batch-size=128 \
    --lr=1e-3 \
    --wd=0.1 \
    --epochs=30 \
    --workers=8 \
    --model RN50
