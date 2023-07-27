#!/bin/bash

# MySQL database credentials
DB_HOST="batchjobmysql.mysql.database.azure.com"
DB_USER="udayvarma"
DB_PASSWORD="@Capgemini"
DB_NAME="job62"

# Connect to the database and execute the delete query
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" <<EOF
DELETE FROM your_table_name WHERE status = 'blocked';
EOF

# Check if the delete query was successful
if [ $? -eq 0 ]; then
  echo "Records with status 'blocked' deleted successfully."
else
  echo "Error deleting records with status 'blocked'."
fi
