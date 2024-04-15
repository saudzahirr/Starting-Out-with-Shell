#!/bin/bash

echo "================================"
echo "Ruff code lint fixing ..."
echo "================================"

read -p "Enter file paths (default: all .py): " files
files=("$files")

if [ ${#files[@]} -eq 0 ]; then
    ruff version && ruff check --fix . && ruff format .
else
    echo "Checking ${files[@]} ..."
    for file in ${files[@]};
    do
        ruff version && ruff check --fix $file && ruff format $file
    done
fi
