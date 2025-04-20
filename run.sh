#!/bin/bash

# Wait until MariaDB is fully initialized
echo "Waiting for MariaDB to start..."
until mysql -h localhost -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "SHOW DATABASES;" > /dev/null 2>&1; do
  sleep 2
done

# Run SQL scripts to initialize the database and tables
echo "Running SQL scripts..."

# Create the database
mysql -h localhost -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" < /tmp/1_create_db.sql

# Create the candidates table and insert default candidates
mysql -h localhost -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" < /tmp/2_create_candidates_table.sql

# Create the votes table
mysql -h localhost -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" < /tmp/3_create_votes_table.sql

echo "Database and tables initialized successfully."
