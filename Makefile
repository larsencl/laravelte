.PHONY: help

GREEN='\033[0;32m'
GREENU='\033[33;4m'
NC='\033[0m'

help:
	@echo ''
	@echo 'Usage:'
	@echo '  make [COMMAND]'
	@echo ''
	@echo 'Available commands:'
	@echo '  install  Install project'
	@echo '  update   Update project'
	@echo '  up       Start docker containers'
	@echo '  down     Stop docker containers'
	@echo '  version  PHP version'
	@echo ''

install:
	cp .env.example .env
	composer install
	npm install
	npm run build

update:
	composer update
	npm install

migrate:
	./vendor/bin/sail artisan migrate

up:
	@echo 'Starting...'
	./vendor/bin/sail up -d
	@echo -e ${GREEN}localhost: ${GREENU}http://127.0.0.1${NC}
	@echo -e ${GREEN}phpMyAdmin: ${GREENU}http://127.0.0.1:8080${NC}

down:
	./vendor/bin/sail stop
	@echo 'Stopped docker containers'

version:
	@echo -e ${GREEN}PHP version${NC}
	./vendor/bin/sail php --version
	@echo -e ${GREEN}Node version${NC}
	./vendor/bin/sail node --version
