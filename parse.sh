#!/usr/bin/env bash
# python src_joint/main.py parse \
# --dataset ptb \
# --save-per-sentences 1000 \
# --eval-batch-size 50 \
# --input-path input_s.txt \
# --output-path-synconst output_synconst.txt \
# --output-path-syndep output_syndephead.txt \
# --output-path-synlabel output_syndeplabel.txt \
# --embedding-path data/glove.gz \
# --model-path-base models/joint_bert_dev=95.55_devuas=96.67_devlas=94.86.pt


# Jan 8, 2023. Run done.
# this script is test example
# Todo. replace glove with better one.
# Todo. Try https://github.com/KhalilMrini/LAL-Parser
python src_joint/main.py parse \
--dataset ptb \
--save-per-sentences 1000 \
--eval-batch-size 50 \
--input-path input_s.txt \
--output-path-synconst output_synconst.txt \
--output-path-syndep output_syndephead.txt \
--output-path-synlabel output_syndeplabel.txt \
--embedding-path data/glove.gz \
--model-path-base models/joint_xlnet_dev=96.03_devuas=96.96_devlas=95.32.pt
#--model-path-base models/joint_cwt_best_dev=93.85_devuas=95.87_devlas=94.47.pt
