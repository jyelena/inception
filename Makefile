all:    buildall

docker-build:   nginx wordpress mariadb

nginx:
		docker build --tag nginx ./srcs/requirements/nginx

wordpress:
		docker build --tag wordpress ./srcs/requirements/wordpress

mariadb:
		docker build --tag mariadb ./srcs/requirements/mariaDB

buildall:
		cd ./srcs/ && docker-compose up -d

ps:
		cd ./srcs/ && docker-compose ps

stop:
		cd ./srcs/ && docker-compose stop

down:
		cd ./srcs/ && docker-compose down

rm:
		docker rm $$(docker ps -qa)

rmi:
		docker rmi -f $$(docker images -q)

logs:
		cd ./srcs/ && docker-compose logs -f

rmwordpress:
		docker rmi -f wordpress

rmnginx:
		docker rmi -f nginx

rmmariadb:
		docker rmi -f mariadb
