#!/bin/bash
while true; do
    echo "----------------- MENU -----------------"
    echo "1. Concatenate two strings."
    echo "2. Rename a file."
    echo "3. Delete a file."
    echo "4. Copy the file to a specific location."
    echo "5. Exit"

    echo -e "Enter your choice (1-5): \c"
    read choice

    case $choice in
        1) echo -e "Enter the first string: \c"
           read string1
           echo -e "Enter the second string: \c"
           read string2
           concatenated_string="${string1}${string2}"
           echo "Concatenated string: $concatenated_string" ;;
        2) echo -e "Enter the current filename: \c"
           read current_filename
           echo -e "Enter the new filename: \c"
           read new_filename
           mv "$current_filename" "$new_filename"
           echo "File renamed successfully." ;;
        3) echo -e "Enter the filename to delete: \c"
           read filename_to_delete
           rm "$filename_to_delete"
           echo "File deleted successfully." ;;
        4) echo -e "Enter the filename to copy: \c"
           read filename_to_copy
           echo -e "Enter the destination directory: \c"
           read destination_directory
           cp "$filename_to_copy" "$destination_directory"
           echo "File copied successfully." ;;
        5) echo "Exiting the script. Goodbye!"
           exit ;;
        *) echo "Invalid choice. Please enter a number between 1 and 5." ;;
    esac

    echo "----------------------------------------"
done
