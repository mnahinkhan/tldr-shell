#!/usr/bin/env bash

# Generate index.md from pre-index.md
# We essentially populate the Table of Contents
# with every sh file avaiable

index_file=index.md
index_proto=pre-index.md

cp $index_proto $index_file

for f in *.sh
do
    filename=${f%.*}
    echo " - [$filename]($filename)" >> $index_file
done
