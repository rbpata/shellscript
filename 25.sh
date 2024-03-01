#!/bin/bash
f1=$1
f2=$2


if [ -d "$f1" ]; then
    echo "Folder $f1 Exists!! "

else
    echo "Can Not Find the Source Folder.."

fi



if [ -d "$f2" ]; then

    echo "Destination Folder Exist!!"
    cp -r "$f1"/* "$f2"
    echo "Copied Successfully.."

else

    mkdir "$f2"
    cp -r "$f1"/* "$f2"
    echo "copied Successfully.."

fi
