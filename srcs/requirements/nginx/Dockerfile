FROM debian:buster
RUN apt-get update && apt-get install -y nginx openssl
RUN mkdir /etc/nginx/ssl_certs

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl_certs/private.pem -keyout /etc/nginx/ssl_certs/public.key -subj "/C=RU/ST=KAZAN/L=KAZAN/OU=21school/"
RUN openssl rsa -noout -text -in /etc/nginx/ssl_certs/public.key

COPY ./conf/nginx.conf /etc/nginx/sites-available/ftsite.conf
COPY ./tools/server_init.sh /tmp/
EXPOSE 443
ENTRYPOINT sh /tmp/server_init.sh && cat /var/log/nginx/error.log && /bin/bash