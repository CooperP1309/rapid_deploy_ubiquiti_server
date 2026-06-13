#!/usr/bin/env bash

# Launch the controller and MongoDB
#docker compose up -d

docker compose -f ./src/docker-compose.yml up -d

# Watch the logs to confirm startup completes
docker compose logs -f unifi-controller
