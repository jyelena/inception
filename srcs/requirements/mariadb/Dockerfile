FROM    debian:buster

RUN		apt-get update \
		&& apt-get install -y default-mysql-server

RUN		mkdir -p /var/run/mysqld/ \
		&& chown mysql /var/run/mysqld /var/lib \
		&& chmod -R 755 /var/run/mysqld/ /var/lib/

COPY    conf/my.cnf /etc/mysql/
COPY	tools/start.sh /tmp/

EXPOSE	3306

CMD  	sh /tmp/start.sh
