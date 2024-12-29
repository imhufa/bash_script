#/usr/bin/env zsh

echo -n "enter ext: "
read ext
echo -n "enter zeropad: "
read zeropad
i=1

for file in *.$ext
do
	r=$( printf "%0${zeropad}d" "$i" )
	mv "$file" "$r.$ext"
	(( i ++ ))
done

