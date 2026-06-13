#!/usr/bin/env bash

if (( EUID != 0 )); then
    echo "Error: This script must be run with sudo or as root." >&2
    exit 1
fi

clear
echo "---------Welcome to the Rapid Deploy Ubiquiti Server---------"
echo
echo
read -rsp "Enter a password for the server database: " password
echo
echo
read -rp "Are you sure you want to continue? (y/n): " confirm
case "$confirm" in
    [Yy]* ) echo "Proceeding...";;
    [Nn]* ) echo "Exiting..."; exit 1;;
    * ) echo "Invalid response";;
esac
echo
echo "# .env - Keep credentials out of the compose file
MONGO_PASSWORD=$password
MONGO_ROOT_PASSWORD=$password" > .env

chmod +x stop_server.sh
chmod +x init-mongo.sh

# Launch the controller and MongoDB
docker compose up -d

# Watch the logs to confirm startup completes
docker compose logs -f unifi-controller
