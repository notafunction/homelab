#!/bin/bash

SERVICE="$1"

if [ $# -eq 0 ]; then
    echo "No arguments supplied"
    exit 1
fi

docker compose -p homelab_${SERVICE} -f docker-compose.${SERVICE}.yml down
docker compose -f docker-compose.${SERVICE}.yml pull
docker compose -p homelab_${SERVICE} -f docker-compose.${SERVICE}.yml up --build -d
