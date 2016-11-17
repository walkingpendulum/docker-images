#!/bin/bash

PATH_TO_VOLUME_FOLDER="$DOCKER_VOLUMES_STORAGE_PATH_PREFIX/gitlab-ce"

sudo docker run --detach \
    --publish 443:443 --publish 81:80 --publish 23:22 \
    --name gitlab-ce \
    --env GITLAB_OMNIBUS_CONFIG="external_url 'http://gitlab.aeschylus.gr/';" \
    --hostname gitlab.aeschylus.gr \
    --restart always \
    --volume "$PATH_TO_VOLUME_FOLDER/config":"/etc/gitlab" \
    --volume "$PATH_TO_VOLUME_FOLDER/logs":"/var/log/gitlab" \
    --volume "$PATH_TO_VOLUME_FOLDER/data":"/var/opt/gitlab" \
    "gitlab/gitlab-ce:latest"

