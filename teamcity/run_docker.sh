#!/bin/bash

prefix="$DOCKER_VOLUMES_STORAGE_PATH_PREFIX/teamcity"

docker run \
    --name teamcity-server-instance  \
    -v $prefix/datadir:/data/teamcity_server/datadir \
    -v $prefix/logs:/opt/teamcity/logs  \
    -p 82:8111 \
    --restart always \
    jetbrains/teamcity-server
