#!/usr/bin/env bash

# trec6 atis
export NAME="atis"
export TYPE="train valid test"
export FILE="en.classification.txt text_original.txt"
for DATA_NAME in ${NAME};
do
mkdir parser_output_${DATA_NAME}
for DATA_TYPE in ${TYPE};
do
for DATA_FILE in ${FILE};
do
python src_joint/main.py parse \
--dataset ptb \
--save-per-sentences 1000 \
--eval-batch-size 50 \
--input-path ${DATA_NAME}/${DATA_TYPE}/${DATA_FILE} \
--output-path-synconst parser_output_${DATA_NAME}/${DATA_TYPE}_${DATA_FILE}_synconst.txt \
--output-path-syndep   parser_output_${DATA_NAME}/${DATA_TYPE}_${DATA_FILE}_syndephead.txt \
--output-path-synlabel parser_output_${DATA_NAME}/${DATA_TYPE}_${DATA_FILE}_syndeplabel.txt \
--embedding-path data/glove.gz \
--model-path-base models/joint_xlnet_dev=96.03_devuas=96.96_devlas=95.32.pt

done
done
done