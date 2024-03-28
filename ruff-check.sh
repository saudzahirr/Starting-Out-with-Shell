#!/bin/bash

files=("$@")

if [ ${#files[@]} -eq 0 ]; then
    ruff version && ruff format --check . && ruff check --output-format=github .
else
    echo "Ruff check: ${files[@]}"
    for file in ${files[@]}; do
    ruff version && ruff format --check $file && ruff check --output-format=github $file
    done
fi
