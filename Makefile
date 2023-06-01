APP_LIST ?= consumen-service

start : down remove up

down :
	docker compose down

remove :
	docker image rm -f ${APP_LIST}

up:
	docker compose up

build:
	docker compose build

restart: down up