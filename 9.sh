#!/bin/bash

echo "Executable files in the current directory:"

# Find and display executable files
for file in *; do
    echo "Checking $file"
    if [ -x "$file" ]; then
        echo "$file is executable"
    fi
done
