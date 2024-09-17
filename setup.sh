#!/usr/bin/env bash

docker compose down

git pull

sudo rm -rf ./data/mariadb
mkdir -p ./data/mariadb
sudo touch ./conf/mariadb/.gitkeep

sudo chown -R 999:999 ./data/mariadb
sudo chmod -R 755 ./data/mariadb

docker compose up -d