#! /bin/bash
export PYTHONUNBUFFERED=0
python style.py --style images/nakedpussy.jpg \
  --checkpoint-dir checkpoints/ \
  --vgg-path /styletransfer/data/imagenet-vgg-verydeep-19.mat \
  --train-path /datasets/coco/coco_train2014 \
  --model-dir /artifacts \
  --test images/clare.jpg \
  --test-dir tests/ \
  --content-weight 1.5e1 \
  --checkpoint-iterations 1000 \
  --batch-size 20
