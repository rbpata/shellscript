#!/bin/bash

echo -e "Enter First File Name: \c"
read file1
echo -e "Enter Second File Name: \c"
read file2

if [ -s $file1 -a -s $file2 ]
then
    cat $file2 >> $file1
    echo "File Appeneded Succesfully.."
else
    echo "Can not Append.."
fi
