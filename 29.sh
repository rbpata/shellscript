#!/bin/bash

echo -e "Enter File Name 1: \c"
read f1

cat "$f1" | tr -d ' ' > "$f1"

filename=$1

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "File '$filename' does not exist."
    exit 1
fi

# Delete all spaces from the file using tr
tr -d ' ' < "$filename" > "$filename"_no_spaces

echo "Spaces deleted from '$filename'. New file created: '$filename'_no_spaces"