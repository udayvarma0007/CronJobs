#!/bin/bash

# Specify the paths and filenames
zip_file="*/source/MKF44UPD.zip"
unzip_dir="*/destination/"
sql_file="*/destination/MKF44UPD/file.sql"

DB_HOST="batchjobmysql.mysql.database.azure.com"
database_name="job22"
database_user="udayvarma"
database_password="@Capgemini"

# Unzip the file
unzip "$zip_file" -d "$unzip_dir"

# Run the SQL file in the database
mysql -h "$DB_HOST" -u "$database_user" -p"$database_password" "$database_name" < "$sql_file"
