DIR=srcs/
YAML=$(DIR)docker-compose.yml
COMPOSE=docker-compose
COMMAND=$(COMPOSE) -f $(YAML)
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

info:
	@echo 'ACTIVE CONTAINERS_____________________________'
	@echo
	@$(COMMAND) ps
	@echo
	@echo 'VOLUMES_______________________________________'
	@echo
	@docker volume ls
	@echo
	@echo 'NETWORKS______________________________________'
	@echo
	@docker network ls
	@echo
	@echo 'IMAGES________________________________________'
	@echo
	@$(COMMAND) images
	

.PHONY:	all up stop down start re clear