service mysql start

echo "CREATE DATABASE IF NOT EXISTS $DB_NAME;" | mysql
echo "GRANT ALL ON *.* TO '$DB_USER' IDENTIFIED BY '$DB_PASSWORD' WITH GRANT OPTION;" | mysql
echo "FLUSH PRIVILEGES;" | mysql

service mysql stop

/usr/bin/mysqld_safe
