#!/usr/bin/env zsh

function echonote () {
	local note="$1"
	local note0="$2"
	local note1='/tmp/dsk/note1'
	local note2='/tmp/dsk/note2'
	local master=$HOME/.notes/master
	local timestamp=(date +\ \ \[%l:%M:%S%P\]::\ )
	local datestamp=(date +::%x)
	local laststamp1="(cat $note1 | grep -e (date +%x) | tail -1)"
	local laststamp2="(cat $note2 | grep -e (date +%x) | tail -1)"

	if [ ! -d /tmp/dsk ]; then
		mkdir -p /tmp/dsk
	fi

	if [ ! -d $HOME/.notes ]; then
		mkdir -p $HOME/.notes
	fi

	if [ ! -f $note1 ]; then
		touch $note1 && chmod +x $note1 && $datestamp >> $note1
	else
		if [[ -n $note0 ]]; then
			if [[ $note0 -eq 1 ]]; then
				if [[ $laststamp1 != $datestamp ]]; then
					$datestamp >> $note1
				fi
			fi
		fi
	fi

	if [ ! -f $note2 ]; then
		touch $note2 && chmod +x $note2 && $datestamp >> $note2
	else
		if [[ -n $note0 ]]; then
			if [[ $note0 -eq 2 ]]; then
				if [[ $laststamp2 != $datestamp ]]; then
					$datestamp >> $note2
				fi
			fi
		fi
	fi

	if [ ! -f $master ]; then
		touch $master && chmod 755 $master
	fi
	
	local time=$($timestamp)

	if [[ $note == clear ]]; then
		if [[ $note0 -eq 1 ]]; then
			echo $null > $note1
		elif [[ $note0 -eq 2 ]]; then
			echo $null > $note2
		elif [[ $note0 == all ]]; then
			echo $null > $note1 && echo $null > $note2
		else
			echo 'clear which note?'
		fi
	elif [[ $note == push ]]; then
		cat $note1 >> $master && cat $note2 >> master
	else
		if [[ $note0 -eq 1 ]]; then
			echo $time$note >> $note1
		elif [[ $note0 -eq 2 ]]; then
			echo $time$note >> $note2
		else
			echo 'note 1 or 2'
		fi
	fi
}

