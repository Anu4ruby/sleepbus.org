#!/bin/bash

sudo docker build -t sleepbus/test:latest ./test
if [ $? -ne 0 ]; then
    echo "Could not build container"
    exit 1
fi

sudo docker rm -f testbus

# script for setting up test data

# run the tests
sudo docker run --name testbus --env-file ./.env-SAMPLE sleepbus/test

# cleanup
sudo docker rm -f testbus
