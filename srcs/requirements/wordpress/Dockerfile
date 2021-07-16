FROM debian:buster
RUN apt-get update && apt-get install -y php php-mysql php-fpm php-mbstring wget unzip vim

WORKDIR /tmp
RUN wget https://wordpress.org/latest.zip
RUN unzip latest.zip
RUN mkdir -p /var/www && mv wordpress /var/www/ftsite

COPY ./conf/wp-config.php /var/www/ftsite/
COPY ./tools/start.sh /tmp

RUN mkdir -p /var/run/php
RUN echo "listen = 9000" >> etc/php7/php-fpm.d/www.conf
VOLUME /var/www/ftsite
EXPOSE 9000

CMD sh /tmp/start.sh