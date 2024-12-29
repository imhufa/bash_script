#!/usr/bin/env zsh

for file in *.sh
do
	r=$( printf "${$(echo $file | sed -e 's/_functions//g')}" )
	mv "$file" "$r"
done

