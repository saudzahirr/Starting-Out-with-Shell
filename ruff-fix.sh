#!/bin/bash

files=("$@")

if [ ${#files[@]} -eq 0 ]; then
    ruff version && ruff --fix . && ruff format .
else
    echo "Ruff check: ${files[@]}"
    for file in ${files[@]}; do
    ruff version && ruff --fix $file && ruff format $file
    done
fi
