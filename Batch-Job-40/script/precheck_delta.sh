#!/bin/bash

# Database connection details
db_host="batchjobmysql.mysql.database.azure.com"
db_user="udayvarma"
db_password="@Capgemini"
db_name="job40"

# CSV file path and name
csv_file="*/PreCheck_vendor/LicenseManagerPro_YYYYMMDD.csv"

# Database table name
table_name="job40"

# Read the CSV file and insert data into the database table
mysql -h "$db_host" -u "$db_user" -p"$db_password" "$db_name" <<EOF
LOAD DATA LOCAL INFILE '$csv_file'
INTO TABLE $table_name
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
EOF

if [ $? -eq 0 ]; then
  echo "Data inserted into the database table successfully."
else
  echo "Error inserting data into the database table."
fi
