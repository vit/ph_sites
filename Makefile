
##
##
##


-include .env_default
-include .env
export


help:	## Show this help
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)


config:
	./config.sh

build:	build-news build-hugo ## Generate the sites from src to dst

run: up

stop: down



build-news:
	python3 bin/gen_news.py

build-hugo:
	docker build -t hugo-env-my -f "docker/DockerfileHugo" .
	docker run -it -v ./dst:/src/public hugo-env-my



hugo-bash:
	docker run -it -v ./dst:/src/public --entrypoint /bin/bash hugo-env-my



debug:	## Start docker compose with debug output
	docker compose -f compose/docker-compose.yaml up

up:	## Start docker compose detouched
	docker compose -f compose/docker-compose.yaml up -d

down:	## Stop docker compose
	docker compose -f compose/docker-compose.yaml down

ps:	## List docker compose containers
	docker compose -f compose/docker-compose.yaml ps

c:	## List docker compose containers
	docker compose -f compose/docker-compose.yaml config





