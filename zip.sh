#!/bin/bash

# Variables
folder_to_zip="vavc.git"  # Folder to zip
output_zip="vavc.zip"  # Output zip file

# Create password-protected zip
zip -r -e "$output_zip" "$folder_to_zip"

# Verify the creation
if [ -f "$output_zip" ]; then
    echo "Successfully created $output_zip with password protection."
else
    echo "Failed to create the zip file."
fi