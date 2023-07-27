#!/bin/bash
# Store source and destination paths
source_file="*/source/MTMload.txt"
destination_file="*/completed/"
# Move the file
mv "$source_file" "$destination_file"
echo "File moved successfully from '$source_file' to '$destination_file'."
