#!/usr/bin/zsh

echo -n "lineFile: "; read lineFile

sed -i "$ d" $lineFile

