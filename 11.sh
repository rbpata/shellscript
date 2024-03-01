#!/bin/bash

# Find and count ordinary files
ordinary_files=$(find . -type f | wc -l)

# Find and count directories
directories=$(find . -type d | wc -l)

echo "Number of ordinary files: $ordinary_files"
echo "Number of directories: $directories"


f=$(find . -type f)
d=$(find . -type d)

echo "files :- $f"
echo "directory ;- $d"