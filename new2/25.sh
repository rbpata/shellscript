#!/bin/bash

echo "Enter Source Folder Name :- "
read f1

if [ -d "$f1" ]; then
    echo "Folder $f1 Exists!! "

else
    echo "Can Not Find the Source Folder.."

fi

echo "Enter Destination Folder Name :- "
read f2

if [ -d "$f2" ]; then

    echo "Destination Folder Exist!!"
    cp * "$f1" "$f2"
    echo "Copied Successfully.."

else

    mkdir "$f2"
    cp * "$f1" "$f2"
    echo "copied Successfully.."

fi
