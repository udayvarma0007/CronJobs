#!/bin/bash

# MySQL database credentials
db_host="batchjobmysql.mysql.database.azure.com"
db_user="udayvarma"
db_password="@Capgemini"
db_store="job61"

# Table name and column names
TABLE_NAME="job45"
STATUS_COLUMN="status"

# Connect to MySQL and update the status to "expired"
mysql -h "$db_host" -u "$db_user" -p"$db_password" "$db_store" <<EOF
UPDATE $TABLE_NAME SET $STATUS_COLUMN='EXPIRED';
EOF

echo "Status updated to 'expired' for all rows in $TABLE_NAME."