#!/bin/bash

# Source and destination paths
source_path="*/outgoing_folder/2023-02-23_Kroger_Enterprise_Prescriber_Delta_Profiles.zip"
destination_path="*/eprndata/hms/folder/"

# Copy the zip file to the destination
cp "$source_path" "$destination_path"

# Specify the source and destination paths
source_file="*/XFER/lexisnexis_in/folder/YYYYY-MM-DD_Kroger_Enterprise_Prescriber_Delta_Profiles.zip"
destination_path1="*/eprndata/hms/folder/"

# Move the file to the destination path
mv "$source_file" "$destination_path1"
echo "success."   
echo "File deleted from source."
    



