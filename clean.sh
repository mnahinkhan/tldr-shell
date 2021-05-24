#!/usr/bin/env bash

# For each .sh file in the current directory, remove the .md file with the
# same name, suppressing any error outputs

for f in *.sh
do
    filename="${f%.*}"
    rm "$filename".md 2>/dev/null
done

# Remove index.md file, suppressing any error outputs

rm index.md 2>/dev/null
exit 0
