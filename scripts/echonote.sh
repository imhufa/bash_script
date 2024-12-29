#!/usr/share/zsh

echo -n "enter note: "; read note
echo -n "enter notepath: "; read notepath

echo $note >> $notepath

