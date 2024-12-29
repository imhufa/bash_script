#!/usr/bin/zsh

function gacp () {
	git add .; wait
	git commit -m "$1"; wait
	git push; wait
}

