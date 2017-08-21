#!/bin/bash

# source env vars to use in Docker run commands
. ./env-vars-test

# override BASE_URL & sqlserver env var for tests
# test container talks to web container internally, so uses internal port
export BASE_URL=http://testbusweb:80

# convenience script to destroy any running containers, rebuild (with cache) and output notifications from script watching/syncing source files
sudo docker rm -f {testbussql,testbusweb}
sudo docker build -t sleepbus/web:latest . 

# new network for our containers to run within
sudo docker network create testbusnet

sudo docker run --net=testbusnet --name testbussql -e MYSQL_ROOT_PASSWORD=$SLEEPBUS_DB_PASSWORD -d mariadb
sudo docker run --net=testbusnet --name testbusweb --link testbussql:mysql --env-file ./env-vars-test -p 8089:80 -d -v $(pwd)/src/:/app sleepbus/web


sudo docker exec testbusweb sh /post_launch_test.sh

sudo docker build -t sleepbus/test:latest ./test
if [ $? -ne 0 ]; then
    echo "Could not build container"
    exit 1
fi

sudo docker rm -f testbus

# script for setting up test data

# run the tests
sudo docker run --net=testbusnet --name testbus --env-file ./.env-SAMPLE-test sleepbus/test

# cleanup
#sudo docker rm -f {testbussql,testbusweb,testbus}
