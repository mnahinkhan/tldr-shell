# clean

```clean.sh
#!/usr/bin/env bash

for f in *.sh
do
    filename="${f%.*}"
    rm "$filename".md 2>/dev/null
done

rm index.md 2>/dev/null
exit 0
```
[Back to main](/)