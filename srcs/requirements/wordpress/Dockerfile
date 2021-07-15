FROM debian:buster
RUN apt-get update && apt-get install -y php php-mysql php-fpm wget unzip

WORKDIR /tmp
RUN wget https://wordpress.org/latest.zip
RUN unzip latest.zip
RUN mkdir /var/www && mv wordpress /var/www/jyelena.42.fr
COPY ./conf/wp-config.php /var/www/jyelena.42.fr/

#ENTRYPOINT /bin/bash