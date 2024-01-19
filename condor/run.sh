#!/bin/bash
cd /work/scratch/jin/gitlab/BLIP-MIMIC-Captioning 
args=()
for i in "$@"; do
	args+=" $i"
done
/work/scratch/jin/miniconda3/envs/dcl_env/bin/python -m torch.distributed.run --nproc_per_node=auto train_caption.py $args;
