mkdir -p /run/php/
sed -i 's/;daemonize = yes/daemonize = no/g' /etc/php/7.3/fpm/pool.d/www.conf
echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf

if [ ! -f /var/www/ftsite/wp-config.php ]; then
    wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod +x wp-cli.phar
    mv wp-cli.phar /usr/local/bin/wp
    cd /var/www/ftsite/
    wp core download --allow-root
    chmod 744 /wp-config.php

    sed -i "s/DB__NAME/$DB_NAME/g" /var/www/ftsite/wp-config.php
    sed -i "s/DB__USER/$DB_USER/g" /var/www/ftsite/wp-config.php
    sed -i "s/DB__PASSWORD/$DB_PASSWORD/g" /var/www/ftsite/wp-config.php
    sed -i "s/DB__HOST/$DB_HOST/g" /var/www/ftsite/wp-config.php

    wp core install --allow-root        \
        --url=$WP_URL                   \
        --title=$WP_TITLE               \
        --admin_user=$WP_ADMIN          \
        --admin_password=$WP_ADMIN_PASS	\
        --admin_email=$WP_ADMIN_MAIL
    wp user create --allow-root $WP_USER $WP_USER_MAIL --user_pass=$WP_USER_PASS
fi

/usr/sbin/$(ls /usr/sbin/ |grep php | grep fpm) --nodaemonize
