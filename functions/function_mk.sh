#!/usr/bin/env zsh

function mkcd () {
	local dir=$1
	local perm=$2

	if [ -z $dir ]; then
		echo 'name for new directory required.'
	elif [[ -n $perm ]]; then
		mkdir -p $dir && chmod $perm $dir && cd $dir
	else
		mkdir -p $dir && cd $dir
	fi
}

function mkpd () {
	local dir=$1
	local perm=$2

	if [ -z $dir ]; then
		echo 'name for new directory required.'
	elif [[ -n "$perm" ]]; then
		mkdir -p $dir && chmod -R $perm $dir
	else
		mkdir -p $dir
	fi
}

