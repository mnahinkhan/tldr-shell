#!/usr/bin/env bash

# Converts every sh file in the current dir to a markdown file

for f in *.sh
do
    filename="${f%.*}"
    printf "# %s\n\n\`\`\`bash\n" "$filename" > "$filename".md
    cat "$f" >> "$filename".md
    printf "\`\`\`\n[Back to main](index)" >> "$filename".md
done
