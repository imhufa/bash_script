#!/usr/bin/env zsh

function rnmp4() {
    local dir="$1"
    local execute="$2"
    
    if [[ -z "$dir" ]]; then
        echo "Usage: rnmp4 <directory> [execute]"
        return 1
    fi
    
    if [[ "$execute" == "exec" ]]; then
        find "$dir" -name '*.mp4' |
            gawk 'BEGIN { a=1 } { system("mv \"" $0 "\" " a++ ".mp4") }'
    else
        find "$dir" -name '*.mp4' |
            gawk 'BEGIN { a=1 } { printf "mv \"%s\" %04d.mp4\n", $0, a++ }'
    fi
}

