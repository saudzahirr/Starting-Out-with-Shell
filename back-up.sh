#!/bin/bash

# Check if the correct number of arguments is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename="$1"

# Check if the file exists
if [ ! -f "$filename" ]; then
    error="Error: File not found: $filename"
    echo $error
    echo "Creating empty $filename file."
    touch $filename
fi

# Get the current timestamp
timestamp=$(date +"%Y-%m-%d-%H:%M:%S")

# Extract the file extension (if any)
file_extension=""
if [[ "$filename" == *.* ]]; then
    file_extension=".${filename##*.}"
    filename="${filename%.*}"
fi

# Create a backup filename with a timestamp
backup_filename="${filename}_${timestamp}${file_extension}"

# Copy the file to the backup filename
cp "${filename}${file_extension}" "$backup_filename"

# Check if the copy was successful
if [ $? -eq 0 ]; then
    echo "Backup created: $backup_filename"
else
    echo "Error: Backup failed."
    exit 1
fi
