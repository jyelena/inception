if [ ! -f /tmp/done ]; then
    service mysql start

    echo "CREATE DATABASE IF NOT EXISTS $DB_NAME;" | mysql -u root
    echo "GRANT ALL ON *.* TO '$DB_USER' IDENTIFIED BY '$DB_PASSWORD' WITH GRANT OPTION;" | mysql -u root
    echo "ALTER USER 'root'@'localhost' IDENTIFIED BY 'SQL_CONF_ROOT_PASS';" | mysql -u root
    echo "FLUSH PRIVILEGES;" | mysql -u root

    service mysql stop
    touch /tmp/done
fi

/usr/bin/mysqld_safe
