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

clear_all: stop down
	$(D) rm $$($(D) ps -qa)
	$(D) rmi -f $$($(D) images -q)

.PHONY:	all up stop down start re