#!/usr/bin/zsh

function touchme () {
	local touchFile=$1
	local arg1=$2
	local logPath=/var/log/gosen/fs.log
	local timeStamp=$(date +%l:%M:%S%t%P)

	touch $touchFile
	chmod +x $touchFile

	if [[ -n $arg1 ]]; then
		if [[ $arg1 =~ 'log' ]]; then
			echo "$timeStamp > $touchFile" >> $logPath
		elif [[ $arg1 =~ 'help' ]]; then
			echo 'Usage: $ touchme [arg]\nValid args: [ log help ]'
		else
			echo 'ERROR! Invalid args.\nUsage: $ touchme [arg]\nValid args: [ log help ]'
		fi
	fi
}

