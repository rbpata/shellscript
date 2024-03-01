#!/bin/bash
echo "Filename     Size       Date            Protection   Owner"

# Loop through each file in the current directory
for file in *; do
    # Get file information
    size=$(stat -c "%s" "$file")
    date=$(stat -c "%y" "$file")
    protection=$(stat -c "%A" "$file")
    owner=$(stat -c "%U" "$file")

    # Display file information in the specified format
    printf "%-12s %-10s %-16s %-12s %-10s\n" "$file" "$size" "$date" "$protection" "$owner"
done

#!/bin/bash

# Function to display directory information
display_directory_info() {
    echo "File       Size        Date           Permissions  Owner"
    echo "-------------------------------------------------------"
    ls -l | awk 'NR > 1 { printf "%-10s %-10s %-14s %-12s %-s\n", $9, $5, $6" "$7, $1, $3 }'
}

# Main script starts here
echo "Directory Information:"
echo
display_directory_info
