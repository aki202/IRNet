#!/bin/bash

devices=$1
save_name=$2

CUDA_VISIBLE_DEVICES=$devices python ./src/train.py --dataset ./data/ \
--batch_size=8 \
--cuda \
--epoch 20 \
--beam_size 2 \
--model_name table \
--sentence_features \
--column_pointer \
--save saved_b_model/$save_name
