COMPOSE=srcs/docker-compose.yml
COMMAND=docker-compose -f $(COMPOSE)
D=docker

all:	up

re:		stop up

up:
	$(COMMAND) up -d --build

stop:
	$(COMMAND) stop

down:
	$(COMMAND) down

start:
	$(COMMAND) start

clear: stop down

.PHONY:	all up stop down start re clear