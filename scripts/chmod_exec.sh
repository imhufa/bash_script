#!/usr/bin/env zsh

find . -user "$USER" -type d -exec echo chmod 700 {} +
find . -user "$USER" -not -type d -exec echo 600 {} +

