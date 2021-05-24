#!/usr/bin/env bash

# Converts every sh file in the current dir to a markdown file

for f in *.sh
do
    filename="${f%.*}"
    printf "# %s\n\n\`\`\`%s\n" "$filename" "$f" > "$filename".md
    cat "$f" >> "$filename".md
    printf "\`\`\`\n[Back to main](/)" >> "$filename".md
done
