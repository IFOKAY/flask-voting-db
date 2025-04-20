# Use the official MariaDB image from Red Hat
FROM registry.redhat.io/rhel8/mariadb-105

# Set environment variables for MariaDB initialization
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=pass
ENV MYSQL_DATABASE=votingapp

# Copy the SQL scripts for database initialization
COPY 1_create_db.sql /tmp/
COPY 2_create_candidates_table.sql /tmp/
COPY 3_create_votes_table.sql /tmp/

# Put the script to initialize DB and tables in the MariaDB init path
COPY run.sh /usr/share/container-scripts/mysql/init/

# Expose the correct port for MariaDB
EXPOSE 3306

# Start MariaDB server
CMD ["run-mysqld"]
