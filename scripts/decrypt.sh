#!/usr/bin/env sh

echo 'encrypted.secret' | openssl enc -aes128 -pbkdf2 -a -d -k 'passwd'

