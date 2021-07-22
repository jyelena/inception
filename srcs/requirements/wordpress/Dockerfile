FROM    debian:buster

RUN		apt-get update \
		&& apt-get install -y php php-fpm php-mbstring php-mysql wget unzip

COPY    ./conf/wp-config.php /tmp/
COPY    ./tools/start.sh .

RUN		mkdir -p /run/php/ \
		&& sed -i 's/;daemonize = yes/daemonize = no/g' /etc/php/7.3/fpm/pool.d/www.conf \
		&& echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf \
		&& mkdir -p /var/www \
		&& wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
		&& chmod +x wp-cli.phar \
		&& mv wp-cli.phar /usr/bin/wp \
		&& mkdir -p /var/www/ftsite \
		&& cd /var/www/ftsite/ \
		&& wp core download --allow-root

EXPOSE  9000

VOLUME  ["/var/www/ftsite"]

WORKDIR /
CMD		["sh", "start.sh"]