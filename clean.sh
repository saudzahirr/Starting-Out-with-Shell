#!/bin/bash

read -p "Enter pattern: " pattern
echo "================================"
read -p "Enter 'd' for directory and 'f' file: " type
echo "================================"
echo "Creating backup ..."
echo "================================"
find . -type $type -name "$pattern" -exec zip -r backup.zip {} \;
echo "Cleaning ..."
echo "================================"
find . -type $type -name "$pattern" -exec rm -rf {} +
