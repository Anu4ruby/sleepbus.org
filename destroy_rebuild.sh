#!/bin/bash

# source env vars to use in Docker run commands
. ./env-vars

# convenience script to destroy any running containers, rebuild (with cache) and output notifications from script watching/syncing source files
sudo docker rm -f {sleepbussql,sleepbusweb,mailcatcher,phpmyadmin}
sudo docker build -t sleepbus/web:latest . 

# new network for our containers to run within
sudo docker network create sleepbusnet

sudo docker run --net=sleepbusnet -d -p 1080:1080 --name mailcatcher schickling/mailcatcher
sudo docker run --net=sleepbusnet --name sleepbussql -e MYSQL_ROOT_PASSWORD=$SLEEPBUS_DB_PASSWORD -d mariadb
sudo docker run --net=sleepbusnet --name sleepbusweb --link sleepbussql:mysql --link mailcatcher:mailcatcher --env-file ./env-vars -p 8080:80 -d -v $(pwd)/src/:/app sleepbus/web
sudo docker run --net=sleepbusnet --name phpmyadmin -d --link sleepbussql:db -p 3008:80 phpmyadmin/phpmyadmin


sudo docker exec sleepbusweb sh /post_launch.sh
sudo docker exec -it sleepbusweb sh /watch_source_files.sh
