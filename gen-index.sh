#!/usr/bin/env bash

# Generate index.md from pre-index.md by adding the filename of every
# .sh file in the current directory to the contents of pre-index.md

index_file=index.md
index_proto=pre-index.md

cp $index_proto $index_file

for f in *.sh
do
    filename=${f%.*}
    echo " - [$filename]($filename)" >> $index_file
done
