#!/bin/bash

PATH_TO_VOLUME_FOLDER="$DOCKER_VOLUMES_STORAGE_PATH_PREFIX/jenkins"

docker run -d \
    -p 49001:8080 \
    -e "HTTP_HOST=0.0.0.0" \
    --restart always \
    --name jenkins \
    --volume "$PATH_TO_VOLUME_FOLDER":/var/jenkins_home \
    --privileged \
    -t jenkins

