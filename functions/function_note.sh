#!/usr/bin/env sh

function fnote () {
	local file=$1
	local note=$2

	if [[ -n "$file" ]]; then
		if [[ -n "$file" ]]; then
			if [[ ! -n "$note" ]]; then
				echo 'hey. you need a note to use a function for taking notes. do better.' && echo 'syntax: fnote {filepath} {note}' && echo 'args are required. else riperoni jabroni.'
			else
				echo "$note" >> "$file"
			fi
		else
			echo 'do you know why they call a file README and is always in caps? specifically for you. bye moron.'
		fi
	else
		echo 'confirmed. idiot. bye.'
	fi
}

