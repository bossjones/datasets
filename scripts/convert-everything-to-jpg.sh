#!/bin/bash

# Loop through all files in the current directory
for file in *; do
    # Check if the item is a file (not a directory)
    if [ -f "$file" ]; then
        # Get the filename without extension
        filename=$(basename -- "$file")
        filename="${filename%.*}"

        # Convert the file to JPG format
        magick "$file" "${filename}.jpg"

        echo "Converted $file to ${filename}.jpg"
    fi
done

echo "Conversion complete!"
