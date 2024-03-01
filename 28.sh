#!/bin/bash
echo -e "Enter File Name 1: \c"
read f1
echo -e "Enter File Name 2: \c"
read f2

cat $f1 > vfile
cat $f2 >> vfile
paste -d " " $f1 $f2 >> vfile

file1=$1
file2=$2
output_file=$3

# Check if both input files exist
if [ ! -f "$file1" ]; then
    echo "File '$file1' does not exist."
    exit 1
fi

if [ ! -f "$file2" ]; then
    echo "File '$file2' does not exist."
    exit 1
fi

# Combine files horizontally using paste
paste "$file1" "$file2" > "$output_file"_horizontal.txt

# Combine files vertically using cat
cat "$file1" "$file2" > "$output_file"_vertical.txt

echo "Files combined horizontally in '$output_file'_horizontal.txt"
echo "Files combined vertically in '$output_file'_vertical.txt"