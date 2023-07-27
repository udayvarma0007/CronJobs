#!/bin/bash

# MySQL database credentials
DB_HOST="batchjobmysql.mysql.database.azure.com"
DB_USER="udayvarma"
DB_PASSWORD="@Capgemini"
DB_NAME="job79"

# Tables to check for duplicates
TABLE1="table1"
TABLE2="table2"

# Connect to MySQL and find duplicates
mysql -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" <<EOF

DELETE FROM $TABLE1
WHERE rx_number IN (
    SELECT rx_number
    FROM $TABLE2
);

EOF

echo "Duplicate records have been eliminated."
