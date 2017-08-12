#!/bin/bash

sudo docker build -t sleepbus/test:latest .
if [ $? -ne 0 ]; then
    echo "Could not build container"
    exit 1
fi

sudo docker rm -f {testbussql,testbusweb,testbus}

# setup test instances of web and db images
sudo docker build -t sleepbus/web:latest ../ 
sudo docker run --name testbussql -e MYSQL_ROOT_PASSWORD=$SLEEPBUS_DB_PASSWORD -d mariadb
sudo docker run --name testbusweb --link testbussql:mysql --env-file ./env-vars -p 8090:80 -d -v $(pwd)/src/:/app sleepbus/web
sudo docker exec testbusweb sh /post_launch.sh

# run the tests
sudo docker run --name testbus --link testbusweb:testbusweb sleepbus/test

# cleanup
#sudo docker rm -f {testbussql,testbusweb,testbus}
