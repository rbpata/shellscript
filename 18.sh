#!/bin/bash

echo "1. Display the Content of the Two Files..."
echo "2. Copy the files.."
echo "----------------------------------------------------------------"
echo "Enter your Choice :- "
read ch

case $ch in
    1)
        echo "Enter File 1 :- "
        read a
        echo "Enter File 2 :- "
        read b
        cat $a $b ;;
    2)
        echo "Enter Source File :- "
        read c
        echo "Enter Destination File :- "
        read d
        if [ -f $c ]; then
            cp $c $d
            echo "File Copied Successfully.."
        else
            echo "Source File Not Found.."
        fi ;;
    *)
        echo "Invalid choice" ;;
esac