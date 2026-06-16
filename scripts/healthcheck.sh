#!/bin/bash

URL=$1

curl -f $URL

if [ $? -eq 0 ]; then
    echo "Healthy"
else
    echo "Unhealthy"
    exit 1
fi
