#!/usr/bin/env bash

DOCKER_COMPOSE_FILE="docker-compose-local.yaml"

docker compose -f $DOCKER_COMPOSE_FILE build

docker compose -f $DOCKER_COMPOSE_FILE up

exit 0
