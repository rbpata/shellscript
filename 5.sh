#!/bin/bash

    echo "1. Create a file called text and store name, age, and address in it."
    echo "2. Display the contents of the file text on the screen."
    echo "3. Delete the directories mydir and newdir in one shot."
    echo "4. Sort a numeric file."
    echo "5. Change the permissions for the file newtext to 666."

    echo -e "ENTER YOUR CHOICE: \c"
    read -r choice

case $choice in
    1) 
        echo "Enter name: "; read -r name
        echo "Enter age: "; read -r age
        echo "Enter address: "; read -r address
        echo "Name: $name, Age: $age, Address: $address" > text
        echo "File 'text' created and data stored."
        ;;
    2) 
        if [ -e text ]; then
            cat text
        else
            echo "File 'text' not found."
        fi
        ;;
    3) 
        if [ -d mydir ] && [ -d newdir ]; then
            rm -r mydir newdir
            echo "Directories 'mydir' and 'newdir' deleted."
        else
            echo "Directories 'mydir' and/or 'newdir' not found."
        fi
        ;;
    4) 
        if [ -e numaricfile.txt ]; then
            sort -n numaricfile.txt
        else
            echo "File 'numaricfile.txt' not found."
        fi
        ;;
    5) 
        if [ -e newtext ]; then
            chmod 666 newtext
            echo "Permissions for 'newtext' changed to 666."
        else
            echo "File 'newtext' not found."
        fi
        ;;
    *) 
        echo "INVALID CHOICE"
        ;;
esac
