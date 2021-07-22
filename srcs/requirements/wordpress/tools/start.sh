echo test >> /var/www/ftsite/zzz.txt

if [ ! -f /var/www/ftsite/wp-config.php ]; then
    sed -i "s/DB__NAME/$DB_NAME/g" /tmp/wp-config.php
    sed -i "s/DB__USER/$DB_USER/g" /tmp/wp-config.php
    sed -i "s/DB__PASSWORD/$DB_PASSWORD/g" /tmp/wp-config.php
    sed -i "s/DB__HOST/$DB_HOST/g" /tmp/wp-config.php
    mv /tmp/wp-config.php /var/www/ftsite/
    chmod 744 /var/www/ftsite/wp-config.php
    cd /var/www/ftsite
    wp core install --allow-root --url=$DOMAIN_NAME --title=$WP_TITLE \
    --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PASS --admin_email=$WP_ADMIN_MAIL
    wp user create --allow-root $WP_USER $WP_USER_MAIL --user_pass=$WP_USER_PASS
fi

/usr/sbin/$(ls /usr/sbin/ | grep php | grep fpm) --nodaemonize
