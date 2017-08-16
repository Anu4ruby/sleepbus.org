#!/bin/bash

# source env vars to use in Docker run commands
. ./env-vars

sudo docker build -t sleepbus/web:latest . 
sudo docker build -t sleepbus/test:latest ./test

sudo docker run --name sleepbussql -e MYSQL_ROOT_PASSWORD=$SLEEPBUS_DB_PASSWORD -d mariadb
sudo docker run --name sleepbusweb --link sleepbussql:mysql --env-file ./env-vars -p 8080:80 -d -v $(pwd)/src/:/app sleepbus/web
sudo docker exec sleepbusweb sh /post_launch.sh
sudo docker exec -it sleepbusweb sh /watch_source_files.sh

sudo docker run --name testbus --env-file ./.env-SAMPLE sleepbus/test
