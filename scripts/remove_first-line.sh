#!/usr/bin/zsh

echo -n 'lineFile: '
read lineFile
tmpFile=$lineFile'.tmp'

tail -n +2 "$lineFile" > "$tmpFile"; mv $(echo $tmpFile) $(echo $lineFile)

