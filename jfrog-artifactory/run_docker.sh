#!/bin/bash

CONTAINER_NAME=jfrog-artifactory
PATH_TO_VOLUME_FOLDER="$DOCKER_VOLUMES_STORAGE_PATH_PREFIX/$CONTAINER_NAME"

docker run -d \
	--name $CONTAINER_NAME \
	-p 8081:8081 \
	-v "$PATH_TO_VOLUME_FOLDER/data":/var/opt/jfrog/artifactory/data \
	-v "$PATH_TO_VOLUME_FOLDER/logs":/var/opt/jfrog/artifactory/logs \
	-v "$PATH_TO_VOLUME_FOLDER/etc":/var/opt/jfrog/artifactory/etc \
	docker.bintray.io/jfrog/artifactory-oss:latest
