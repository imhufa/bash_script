#!/ usr/bin/zsh

a=1

for i in *.mp4; do
	new=$(printf"%04d.mp4" "$a")
	mv -i -- "$i" "$new"
	let a=a+1
done

