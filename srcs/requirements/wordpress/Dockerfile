FROM debian:buster
RUN apt-get update && apt-get install -y php php-mysql php-fpm php-mbstring wget unzip vim

WORKDIR /tmp
RUN wget https://wordpress.org/latest.zip
RUN unzip latest.zip
RUN mkdir /var/www && mv wordpress /var/www/jyelena.42.fr

COPY ./conf/wp-config.php /var/www/jyelena.42.fr/
COPY ./tools/start.sh /tmp

EXPOSE 9000

CMD sh /tmp/start.sh