#!/usr/bin/env zsh

if [ -L ~/.mozilla/icecat ]; then
	rm -f ~/.mozilla/icecat
fi

if [ -d /mnt/temp/icecat ]; then
	mv /mnt/temp/icecat ~/.mozilla/
fi

if [ -f ~/.mozilla/icecat.tar.gz ]; then
	rm -f ~/.mozilla/icecat.tar.gz \
		&& tar -czvpf icecat.tar.gz -C ~/.mozilla icecat --one-file-system \
		&& mv icecat.tar.gz /var/bak/
else
	tar -czvpf icecat.tar.gz -C ~/.mozilla icecat --one-file-system \
		&& mv icecat.tar.gz /var/bak/
fi

