#!/usr/bin/env zsh

for file in *.sh
do
	r=$( printf "${$(echo $file | sed -e 's/_function//g')}" )
	mv "$file" "$r"
done

