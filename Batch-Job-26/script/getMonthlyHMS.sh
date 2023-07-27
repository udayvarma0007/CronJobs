#!/bin/bash

# Source and destination paths
source_path="*/outgoing_folder/hcbatchtransfer.lexisnexisrisk.com/Pharmacy_Org_DeltaFile_02.txt"
destination_path="*/XFER/lexisnexis_in/folder/u060ftp13.kroger.com"

# Copy the zip file to the destination
cp "$source_path" "$destination_path"

# Specify the source and destination paths
source_file="*/XFER/lexisnexis_in/folder/u060ftp13.kroger.com/Pharmacy_Org_DeltaFile_02.txt"
destination_path1="*/eprndata/hms/folder/"

# Move the file to the destination path
mv "$source_file" "$destination_path1"
echo "success."   
echo "File deleted from source."