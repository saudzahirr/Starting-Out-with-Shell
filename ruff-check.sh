#!/bin/bash

echo "================================"
echo "Ruff code lint checking ..."
echo "================================"

read -p "Enter file paths (default: all .py): " files
files=("$files")

if [ ${#files[@]} -eq 0 ]; then
    ruff version && ruff format --check . && ruff check --output-format=github .
else
    echo "Ruff check: ${files[@]}"
    for file in ${files[@]};
    do
        ruff version && ruff format --check $file && ruff check --output-format=github $file
    done
fi
