#!/bin/bash

# Shell script to perform various commands

# Display current date and time
date

# List files and directories in the current directory
ls

# Show currently logged-in users
who

# Display calendar for the current month
cal || echo "cal command not found"

# List currently running processes
ps

# Count lines, words, and characters in a file
touch somefile.txt
wc somefile.txt

# Concatenate and display the contents of a file
cat somefile.txt

# Print system information
uname -a

# Print the current working directory
pwd

# Create a new directory
mkdir new_directory

# Change to a different directory
cd new_directory

# Remove an empty directory
rmdir new_directory || echo "Directory not found"

# Copy files or directories
echo "Hello, world!" > file.txt
cp file.txt copied_file.txt

# Remove files or directories
rm file.txt copied_file.txt

# Move or rename files or directories
touch old_file.txt
mv old_file.txt new_file.txt

# Compare the content of two files
echo "File1 content" > file1.txt
echo "File2 content" > file2.txt
diff file1.txt file2.txt

# Change file permissions
touch somefile.sh
chmod 755 somefile.sh

# Search for a pattern in files
echo "Pattern matching" > somefile.txt
grep "Pattern" somefile.txt

# Stream editor for text transformation
sed 's/Pattern/NewPattern/' somefile.txt

# Display the first few lines of a file
head somefile.txt

# Display the last few lines of a file
tail somefile.txt

# Remove sections from each line of a file
echo "1,John,Smith" > somefile.csv
cut -d',' -f1,3 somefile.csv

# Merge lines from multiple files
echo "File1 content" > file1.txt
echo "File2 content" > file2.txt
paste file1.txt file2.txt

# Sort lines of text files
touch somefile.txt
sort somefile.txt

# Search for files and directories
find / -name "filename" 2>/dev/null || echo "File not found"

# Display manual pages for a command
man ls
