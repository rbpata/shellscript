#!/bin/bash

echo "1. How to display hidden files."
echo "2. How to delete a directory with files."
echo "3. How a user can do interactive copying."
echo "4. How a user can do interactive deletion of files."
echo "5. Explain two functionalities of 'mv' command with an example."
echo -e "ENTER YOUR CHOICE: \c"
read -r choice

case $choice in
    1) 
        echo "Displaying hidden files:"
        for i in .*;do
        if [ "$i" != "." ] && [ "$i" != ".." ]; then
                echo "$i"
        fi
done
        ;;
    2) 
        echo "Deleting a directory with files:"
        rm -rf new_directory
        ;;
    3) 
        echo "Interactive copying:"
        cp -i abc.txt pqr.txt
        ;;
    4) 
        echo "Interactive deletion of files:"
        rm -i abc.txt
        ;;
    5)  
        echo "1. To rename a file."
        echo "2. To move a group of files to a different directory."
        echo -e "ENTER YOUR CHOICE: \c"
        read -r c
        case $c in
            1) 
                echo "Renaming a file:"
                mv abc.txt pqr.txt
                ;;
            2) 
                echo "Moving a group of files to a different directory:"
                mv pqr.txt abc.txt ~/Desktop
                ;;
            *) 
                echo "INVALID OPTION"
                ;;
        esac
        ;;
    *) 
        echo "INVALID OPTION"
        ;;
esac
