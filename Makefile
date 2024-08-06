
##
##
##

help:	## Show this help
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)


build:	## Generate the sites from source files
	docker build -t hugo-env-my -f "docker/DockerfileHugo" .
	docker run -it -v ./dst:/src/public hugo-env-my


debug:	## Start docker compose detouched
	docker compose up

up:	## Start docker compose with output
	docker compose up -d

down:	## Stop docker compose
	docker compose down

ps:	## List docker compose containers
	docker compose ps




