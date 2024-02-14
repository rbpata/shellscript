#!/bin/bash

echo "---------------MAIN MENU---------------"
echo "1. Sort file abc.txt and save this sorted file in xyz.txt"
echo "2. Give an example of: executing commands together without affecting each other."
echo "3. How to print 'this is a three-line text message'"
echo "4. Which command displays the version of UNIX?"
echo "5. How to get online help for the cat command"
echo -e "ENTER YOUR CHOICE: \c"
read  -r choice

case $choice in
    1) 
        if [ -e abc.txt ]; then
            sort abc.txt > xyz.txt
            echo "File abc.txt sorted and saved in xyz.txt"
        else
            echo "Error: abc.txt not found."
        fi
        ;;
    2) 
        echo "Example: executing commands together without affecting each other"
        ls -l
        ls
        ;;
    3) 
        echo -e "this is\na three-line\ntext message"
        ;;
    4) 
        uname -a
        ;;
    5) 
        echo "Online help for cat command:"
        cat --help
        ;;   
    *) 
        echo "INVALID OPTION" 
        ;;
esac
