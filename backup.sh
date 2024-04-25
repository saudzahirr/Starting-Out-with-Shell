#!/bin/bash

echo "================================"
echo "Creating backup ..."

if [ -z "$@" ]; then
  echo "Error: No files specified for backup."
  exit 1
fi

for file in "$@"
do
  cp "$file" "backup/$(date +%Y-%m-%d_%H-%M-%S).py"
done

echo "Backup created."
echo "================================"
