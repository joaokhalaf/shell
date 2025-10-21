#! /bin/bash

if [ "$#" -lt 2 ]; then
    echo "The $0 need a named file to compact"
    exit 1
fi
out_arq="$1"
arqs=("${@:2}")
tar -czf "$out_arq" "${arqs[@]}"