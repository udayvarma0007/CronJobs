#!/bin/bash

# MySQL database credentials
DB_HOST="batchjobmysql.mysql.database.azure.com"
DB_USER="udayvarma"
DB_PASSWORD="@Capgemini"
DB_NAME="job78"

# Tables to check for duplicates
TABLE1="table1"
TABLE2="table2"

# Temporary table name for storing duplicates
TMP_TABLE="temp_duplicates"

# Connect to MySQL and find duplicates
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" <<EOF
-- Create temporary table to store duplicate records
CREATE TABLE IF NOT EXISTS $TMP_TABLE (
    -- Define the same columns as in the original tables
    -- Modify this section based on your table structure
    rx_number INT ,
    name VARCHAR(255),
    location VARCHAR(255)
    -- Add more columns if needed
);

-- Find duplicates in Table 1
INSERT INTO $TMP_TABLE
    SELECT *
    FROM $TABLE1
    GROUP BY rx_number
    HAVING COUNT(*) > 1;

-- Find duplicates in Table 2
INSERT INTO $TMP_TABLE
    SELECT *
    FROM $TABLE2
    GROUP BY rx_number
    HAVING COUNT(*) > 1;

-- Delete duplicate records from Table 1
DELETE t1
FROM $TABLE1 t1
JOIN $TMP_TABLE tmp ON t1.id = tmp.id;

-- Delete duplicate records from Table 2
DELETE t2
FROM $TABLE2 t2
JOIN $TMP_TABLE tmp ON t2.id = tmp.id;

-- Drop the temporary table
DROP TABLE IF EXISTS $TMP_TABLE;

-- Commit the changes
COMMIT;

EOF

echo "Duplicate records have been eliminated."
