#!/usr/bin/zsh

function preappend () {
	while IFS= read -r line1; do
		while IFS= read -r line2; do
			printf '%s.%s\n' "$line1" "$line2"
		done <"$2"
	done <"$1"
}

