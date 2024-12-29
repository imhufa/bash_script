#! /usr/bin/zsh

echo -n "Enter mainurl: "
read mainurl
echo -n "Enter mainlink: "
read mainlink

wget \
	--recursive \
	--level 5 \
	--no-clobber \
	--page-requisites \
	--adjust-extension \
	--span-hosts \
	--convert-links \
	--restrict-file-names=windows \
	--domain \
		$mainurl \
	--no-parent \
		$mainlink
