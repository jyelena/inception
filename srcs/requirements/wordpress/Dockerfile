FROM    debian:buster

RUN		apt-get update \
		&& apt-get install -y php php-fpm php-mbstring php-mysql wget unzip

RUN		mkdir -p /var/www
RUN     wget https://wordpress.org/latest.zip
RUN     unzip latest.zip
RUN     mv wordpress /var/www/ftsite
COPY    conf/wp-config.php /var/www/ftsite/
COPY    ./tools/start.sh .

EXPOSE  9000

VOLUME  ["/var/www/ftsite"]

CMD		sh start.sh
