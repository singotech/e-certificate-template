#!/bin/bash

# Define the README.md file
README="README.md"

# Define the header and initial content for README.md
HEADER="# e-certificate-template

## List of template"

# Write the header to the README.md file
echo "$HEADER" > $README

# Loop through all HTML files in the current directory
for file in *.html; do
    # Check if there are no HTML files
    if [ "$file" = "*.html" ]; then
        echo "No HTML files found."
        exit 1
    fi
    # Append the formatted list item to the README.md file
    echo "- [$file]($file)" >> $README
done
