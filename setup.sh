#!/usr/bin/env bash

docker compose down

echo -e "TeddyBear101" | sudo -S sudo rm -rf ./data/mariadb
mkdir -p ./data/mariadb

echo -e "TeddyBear101" | sudo -S sudo chown -R 999:999 ./data/mariadb
echo -e "TeddyBear101" | sudo -S sudo chmod -R 755 ./data/mariadb

echo -e "TeddyBear101" | sudo -S sudo chown -R 999:999 ./conf/mariadb
echo -e "TeddyBear101" | sudo -S sudo chmod -R 755 ./conf/mariadb
echo -e "TeddyBear101" | sudo -S sudo touch ./conf/mariadb/.gitkeep

docker compose up -d