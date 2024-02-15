#!/bin/bash

echo "Enter File Name :- "
read file

if [ -f $file ]; then

    echo "File exist and Modification Time is :- ";ls -l $file | cut -c 50-54

else
    echo "File not Exist..."
fi