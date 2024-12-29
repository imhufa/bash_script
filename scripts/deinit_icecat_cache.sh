#!/usr/bin/env zsh

if [ -L ~/.cache/mozilla/icecat ]; then
	rm -f ~/.cache/mozilla/icecat
fi

if [ -d /mnt/temp/cache/icecat ]; then
	mv /mnt/temp/cache/icecat ~/.cache/mozilla/
fi

if [ -f ~/.cache/mozilla/icecat.tar.gz ]; then
	rm -f ~/.cache/mozilla/icecat.tar.gz \
		&& tar -czvpf icecat_cache.tar.gz -C ~/.cache/mozilla icecat --one-file-system \
		&& mv icecat_cache.tar.gz /var/bak/
else
	tar -czvpf icecat_cache.tar.gz -C ~/.cache/mozilla icecat --one-file-system \
		&& mv icecat_cache.tar.gz /var/bak/
fi

