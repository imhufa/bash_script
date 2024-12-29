#!/usr/bin/zsh

find -name '*.mp4' |
	gawk 'BEGIN { a=1 }{printf "mv %s %04d.mp4\n", $0, a++ }' |
	zsh

