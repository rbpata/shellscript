#!/bin/bash

while true; do
    echo "----------------- MENU -----------------"
    echo "1. List home directory."
    echo "2. Show date."
    echo "3. Print working directory."
    echo "4. Display users logged in."
    echo "5. Exit"

    echo -e "Enter your choice (1-5): \c"
    read choice

    case $choice in
        1) echo "Home Directory: $HOME" ;;
        2) echo "Current Date: $(date)" ;;
        3) echo "Working Directory: $(pwd)" ;;
        4) echo "Users Logged In:"
           who ;;
        5) echo "Exiting the script. Goodbye!"
           exit ;;
        *) echo "Invalid choice. Please enter a number between 1 and 5." ;;
    esac

    echo "----------------------------------------"
done
