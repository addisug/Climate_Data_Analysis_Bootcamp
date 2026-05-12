#!/bin/bash

INPUT_DIR=~/data_uploading/generated
OUTPUT_DIR=~/data_uploading/processed_output

mkdir -p $OUTPUT_DIR

for file in $INPUT_DIR/*.nc
do
    echo "Processing $file"

    basename=$(basename $file .nc)

    cdo sinfo $file > $OUTPUT_DIR/${basename}_info.txt
done
