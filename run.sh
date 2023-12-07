#!/usr/bin/env bash

# Build
docker build --tag python-docker .

# Run in Background
#docker run -p 5001:5001 --name test python-docker

# Remove Container when stopped
docker run -p 5001:5001 --name test --rm python-docker

exit 0
