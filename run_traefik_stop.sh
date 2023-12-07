#!/usr/bin/env bash

DOCKER_COMPOSE_FILE="docker-compose-traefik.yaml"

docker compose -f $DOCKER_COMPOSE_FILE down

exit 0
