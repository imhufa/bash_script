#!/usr/bin/env zsh

function treeno () {
	if [[ -n $1 ]]; then
		tree -L 1 -a --noreport -- "$1"
	else
		tree -L 1 -a --noreport
	fi
}

function treeone () {
	if [[ -n $1 ]]; then
		tree -L 1 -a -- "$1"
	else
		tree -L 1 -a
	fi
}

function treetwo () {
	if [[ -n $1 ]]; then
		tree -L 2 -a -- "$1"
	else
		tree -L 2 -a
	fi
}

function treela () {
	if [[ -n $1 ]]; then
		tree -L 1 -l -a -- "$1"
	else
		tree -L 1 -l -a
	fi
}

function etree () {
	if [[ -n $1 ]]; then
		tree --noreport -L 1 -a -- "$1" > tree.tmp
	else
		tree --noreport -L 1 -a > tree.tmp
	fi
	cat tree.tmp
}

