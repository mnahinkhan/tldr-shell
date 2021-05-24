# for

```bash
#!/usr/bin/env bash

# Add "img-" in front of every png image filename

for f in *.png
do
   mv f "img-$f.png" 
done
```
[Back to main](index)