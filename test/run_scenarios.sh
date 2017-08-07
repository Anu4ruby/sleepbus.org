#!/bin/bash

sudo docker build -t sleepbus/test:latest .
if [ $? -ne 0 ]; then
    echo "Could not build container"
    exit 1
fi

sudo docker run --link sleepbusweb:sleepbusweb sleepbus/test

