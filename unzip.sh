#!/bin/bash

# Variables
zip_file="my_archive.zip"  # The zip file to extract
output_folder="extracted_folder"  # Folder where contents will be extracted
read -sp "Enter password: " password

# Extract the zip file
unzip -P "$password" "$zip_file" -d "$output_folder"

# Verify the extraction
if [ $? -eq 0 ]; then
    echo "Successfully extracted $zip_file to $output_folder."
else
    echo "Failed to extract $zip_file. Check the password or file."
fi
