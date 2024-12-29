#!/usr/bin/env zsh

for file in *.sh
do
	r=$( printf "${$(echo $file | sed -e 's/^/function_/')}" )
	mv "$file" "$r"
done

