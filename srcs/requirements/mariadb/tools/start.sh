#!/bin/bash

mkdir -p /var/run/mysqld && mkfifo /var/run/mysqld/mysqld.sock
chmod 777 /var/run/mysqld/mysqld.sock && chown -R mysql /var/run/mysqld
service mysql start

echo "CREATE DATABASE IF NOT EXISTS $DB_NAME;" | mysql
echo "GRANT ALL ON *.* TO $DB_USER IDENTIFIED BY $DB_PASSWORD WITH GRANT OPTION;" | mysql
echo "FLUSH PRIVILEGES;" | mysql

/usr/bin/mysqld_safe
