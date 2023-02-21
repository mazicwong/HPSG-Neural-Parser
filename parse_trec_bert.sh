#!/usr/bin/env bash

# trec6 atis trec50 sst5
export NAME="atis"  # trec6
export TYPE="train valid test"
export FILE="en.classification.txt text_original.txt"
for DATA_NAME in ${NAME};
do
mkdir parser_output_jointbert_${DATA_NAME}
for DATA_TYPE in ${TYPE};
do
for DATA_FILE in ${FILE};
do

python preprocess_null_string.py --path ${DATA_NAME}/${DATA_TYPE}/${DATA_FILE}

python src_joint/main.py parse \
--dataset ptb \
--save-per-sentences 1000 \
--eval-batch-size 50 \
--input-path ./tmp.txt \
--output-path-synconst parser_output_jointbert_${DATA_NAME}/${DATA_TYPE}_${DATA_FILE}_synconst.txt \
--output-path-syndep   parser_output_jointbert_${DATA_NAME}/${DATA_TYPE}_${DATA_FILE}_syndephead.txt \
--output-path-synlabel parser_output_jointbert_${DATA_NAME}/${DATA_TYPE}_${DATA_FILE}_syndeplabel.txt \
--embedding-path data/glove.gz \
--model-path-base models/joint_bert_dev=95.55_devuas=96.67_devlas=94.86.pt

done
done
done
