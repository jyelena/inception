mkdir -p /run/php/
sed -i 's/;daemonize = yes/daemonize = no/g' /etc/php/7.3/fpm/pool.d/www.conf
echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf

/usr/sbin/$(ls /usr/sbin/ |grep php | grep fpm) --nodaemonize
