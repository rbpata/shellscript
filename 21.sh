#!/bin/bash

for file in *.txt; do
    if [ -e "$file" ]; then
        new_file="${file%.txt}.dat"
        mv "$file" "$new_file"
        echo "Changed suffix: $file -> $new_file"
    else
        echo "No *.txt files found in the current directory."
        exit 1
    fi
done

echo "Suffix changed successfully for all *.txt files."
