service mysql start
service $(ls /etc/init.d | grep php | grep fpm) start
