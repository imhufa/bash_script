#!/usr/bin/env sh

echo -n "enter file: "
read file
echo -n "enter out: "
read out

grep -oP 'href="\K[^"]+' $file > $out

### grep -oP 'href="\K[^"]+' yourfile.html
