# inception

Requirements:
- make
- docker
- docker-compose

Need to create subdirs:
- for database files: `~/${USER}/data/db`
- for html files: `~/${USER}/data/www`

Need to edit file `/etc/hosts` by adding:<br>
`127.0.0.1   jyelena.42.fr`

Commands:
- `make` - build project
- `make stop` - stops containers
- `make start` - starts containers that have been stopped
- `make down` - stops containers and delete them and images
- `make info` - shows info about running project