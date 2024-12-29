#!/usr/bin/zsh

function ytd () {
	local param=$1
	local url=$2

	if [[ -z $2 ]]; then
		echo 'url or list file required.'
		return 0
	fi

	if [[ $param = list ]]; then
		local link="-a $url"
	elif [[ $param = link ]]; then
		local link="$url"
	else
		echo 'list or link?'
		return 0
	fi

	echo 'executing yt-dlp...'

	yt-dlp \
		--external-downloader aria2c \
		--external-downloader-args "-x 10 -s 10 -j 10 -k 1M --log-level=info --file-allocation=none" \
			$link \
		-f 'best:video+best:audio/best' \
		-r 41493094 \
		-o '%(id)s.%(ext)s' \
		--quiet \
		--progress
}

