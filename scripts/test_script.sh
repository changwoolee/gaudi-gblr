#!/bin/bash


#python3 -u run.py  experiment=imagenet/vit/vit-b-gaudi +task_name="None" logger="csv" datamodule.data_dir=$IMAGENET_DIR trainer.devices=1 datamodule.num_workers=4 +mode_type="eval" +eval.ckpt="./saved_models/imagenet-vit-b-gaudi-2.ckpt" 
#python3 -u run.py  experiment=imagenet/resnet/resnet18 +task_name="None" logger="csv" datamodule.data_dir=$IMAGENET_DIR trainer.devices=1 datamodule.num_workers=4 +mode_type="eval" +eval.ckpt="./saved_models/imagenet-resnet18-gaudi.ckpt" 
python3 -u run.py  experiment=wt103/gpt2-ft-gaudi +task_name="None" logger="csv" trainer.devices=1 datamodule.num_workers=4 +mode_type="eval" +eval.ckpt="./saved_models/gpt2-gaudi.ckpt" trainer.strategy=ddp
