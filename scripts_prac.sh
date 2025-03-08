#!/bin/bash
check_files() {
    directory=$1

    if [ -d "$diretory"]; then
        filecount=$(find "$directory" -type f | wc -l)
        echo "'$directory' contains '$filecount' lines"
    else
        echo "'$directory' is not a valid directory"
    fi
}

if [ $# -eq 0 ]; then
    echo "Usage: '$0' <directory to check>"
    exit 1
fi

check_files "$1"
