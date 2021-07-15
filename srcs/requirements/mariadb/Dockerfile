FROM debian:buster
RUN apt-get update && apt-get install -y default-mysql-server

COPY ./tools/*.* /tmp/
ENTRYPOINT sh /tmp/server_init.sh && /bin/bash