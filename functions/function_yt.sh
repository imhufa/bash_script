#!/usr/bin/env zsh

function ylist () {
	local ylist="$1"

	yt-dlp \
		-a \
		$ylist \
		--audio-quality 'bv*+ba' \
		-o "%(id)s.%(ext)s" \
		--quiet \
		--progress
}

function ydl () {
	local ylink="$1"

	yt-dlp \
		$ylink \
		--audio-quality 'bv*+ba' \
		--output \
			"%(id)s.%(ext)s" \
		--quiet \
		--progress
}

