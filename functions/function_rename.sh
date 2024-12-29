#!/usr/bin/env zsh

function renfiles () {
	local ext=$1
	local zeropad=$2
	local filepath=$3
	local i=1

	for file in *.$ext
	do
		local r=$( printf "%0${zeropad}d" "$i" )
		mv "$file" "$r.$ext"
		(( i ++ ))
	done
}

function renfile () {
	local ext=$1
	local zeropad=$2 
	local i=1

	for file in *.$ext
	do
		local r=$( printf "%0${zeropad}d" "$i" )
		mv "$file" "$r.$ext"
		(( i ++ ))
	done
}

