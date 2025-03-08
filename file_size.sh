#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: '$0' <path to file >"
    exit 1
fi
get_size() {
    path=$1

    if [ -e "$path" ]; then
        size=$(du -sh "$path" 2>/dev/null | awk '{print $1}')
        echo "the size of the '$path' is '$size'"
    else
        echo "'$path does not exist'"
    fi
}

get_size "$1"
