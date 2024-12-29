#!/usr/bin/zsh

clear
wait
while [ : ]
do
	tput cup 1 10
	echo "$(date +%B)"" ""$(date +%d)"", ""$(date +%Y)"
	tput cup 2 17
	echo "$(date +%A)"
#	tput cup 4 17
#	echo "$(hostname)"
	tput cup 5 17
	echo "$(date +%T)"
	sleep 1
done

