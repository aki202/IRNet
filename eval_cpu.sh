# Copyright (c) Microsoft Corporation.
# Licensed under the MIT license.

#!/bin/bash

python -u eval.py --dataset ./data \
--glove_embed_path ./data/glove.6B.300d.txt \
--epoch 50 \
--loss_epoch_threshold 50 \
--sketch_loss_coefficie 1.0 \
--beam_size 5 \
--seed 90 \
--save test.log \
--embed_size 300 \
--sentence_features \
--column_pointer \
--hidden_size 300 \
--lr_scheduler \
--lr_scheduler_gammar 0.5 \
--att_vec_size 300 \
--load_model ./saved_model/IRNet_pretrained.model

python sem2SQL.py --data_path ./data --input_path predict_lf.json --output_path ${save_name}
