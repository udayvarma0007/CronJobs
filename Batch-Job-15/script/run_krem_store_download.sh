#!/bin/bash

# Path to the tar.gz file
tar_file="*/source/FdbRawBat.tar.gz"

# Destination directory to extract the contents
destination_dir="*/destination/"

# Create the destination directory if it doesn't exist
#mkdir -p "$destination_dir"

# Extract the tar.gz file
tar -xzf "$tar_file" -C "$destination_dir"

# Print a success message
echo "File extracted successfully to $destination_dir"


DB_HOST="batchjobmysql.mysql.database.azure.com"
DB_USER="udayvarma"
DB_PASS="@Capgemini"
DB_NAME="job15"

# Path to the SQL script file
SQL_FILE="*/destination/FdbRawBat/chUpdate.sql"

# Execute the SQL script
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < "$SQL_FILE"

echo "success last"


