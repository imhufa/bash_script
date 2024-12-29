#!/usr/bin/env sh

echo -n 'secret' | openssl env -aes128 -pbkdf2 -a -e -k 'passwd'


