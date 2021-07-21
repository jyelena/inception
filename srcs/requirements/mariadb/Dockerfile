FROM    debian:buster

RUN		apt-get update \
		&& apt-get install -y default-mysql-server php-mysql

COPY    conf/my.cnf /etc/mysql/
COPY	tools/start.sh .

EXPOSE	3306
VOLUME	["/var/lib"]
ENTRYPOINT  sh start.sh
