#!/bin/bash

CONTAINER_NAME=oracle-xe-11g
VOLUME_PATH="$DOCKER_VOLUMES_STORAGE_PATH_PREFIX/$CONTAINER_NAME"

docker run -d \
    -p 8080:8080 \
    -p 1521:1521 \
    -v "$VOLUME_PATH":"/u01/app/oracle" \
    --name $CONTAINER_NAME \
    "sath89/oracle-xe-11g"

