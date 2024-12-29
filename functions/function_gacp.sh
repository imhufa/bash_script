#!/usr/bin/env git

function gacp () {
	commitmsg="$1"
	gitstatus=$(git status | tail -n +6 | awk 'NF{$1=$1;print}' | tr '/' ':' | awk -F: '{ print $1": "$NF }')
	
	git add .; wait
	if [[ "$1" == "status" ]]; then
		msg=$gitstatus
	else
		if [ -z $commitmsg ]; then
			git commit -a --allow-empty-message -m ''
		else
			git commit -am "'"$commitmsg"'"
		fi
	fi
	git push
}

