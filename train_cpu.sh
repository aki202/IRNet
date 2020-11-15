# Copyright (c) Microsoft Corporation.
# Licensed under the MIT license.

#!/bin/bash

save_name=$1

echo 'Start..'

python train.py --dataset ./data \
--glove_embed_path ./data/glove.6B.300d.txt \
--epoch 1 \
--loss_epoch_threshold 50 \
--sketch_loss_coefficie 1.0 \
--beam_size 1 \
--seed 90 \
--save ${save_name} \
--embed_size 300 \
--sentence_features \
--column_pointer \
--hidden_size 300 \
--lr_scheduler \
--lr_scheduler_gammar 0.5 \
--att_vec_size 300
