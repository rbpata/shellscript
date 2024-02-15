#!/bin/bash
echo "Enter File Name :- "
read filename

# Display the menu
echo "-------- MENU --------"
echo "1. Display all words of the file in ascending order."
echo "2. Display the file in descending order."
echo "3. Display the file in reverse order."
echo "4. Toggle all characters in the file."
echo "5. Display the type of the file."
echo "----------------------"

# Read user choice
echo -e "Enter your choice (1-5): \c"
read choice

# Perform actions based on user choice
case $choice in
    1) echo "Displaying all words of the file in ascending order:"
       cat "$filename" | tr -s ' ' '\n' | sort ;;
    2) echo "Displaying the file in descending order:"
       tac "$filename" ;;
    3) echo "Displaying the file in reverse order:"
       rev "$filename" ;;
    4) echo "Toggling all characters in the file:"
       tr 'a-zA-Z' 'A-Za-z' < "$filename" ;;
    5) echo "Displaying the type of the file:"
       file "$filename" ;;
    *) echo "Invalid choice. Please enter a number between 1 and 5." ;;
esac
