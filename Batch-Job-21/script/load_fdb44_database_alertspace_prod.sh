#!/bin/bash

# Specify the paths and filenames
zip_file1="*/source/FDB_vendor_under_TREXONE.zip"
unzip_dir1="*/destination/"

zip_file2="*/source/NDDF_PLUS_DB.zip"
unzip_dir2="*/destination/"


# Unzip the file
unzip "$zip_file1" -d "$unzip_dir1"
unzip "$zip_file2" -d "$unzip_dir2"




