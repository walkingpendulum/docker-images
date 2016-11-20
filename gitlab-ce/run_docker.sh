#!/bin/bash

docker volume create --name gitlab-ce-config-volume
docker volume create --name gitlab-ce-logs-volume
docker volume create --name gitlab-ce-data-volume

sudo docker run --detach \
    --publish 443:443 --publish 81:80 --publish 23:22 \
    --name gitlab-ce \
    --restart always \
    --volume gitlab-ce-config-volume:"/etc/gitlab" \
    --volume gitlab-ce-logs-volume:"/var/log/gitlab" \
    --volume gitlab-ce-data-volume:"/var/opt/gitlab" \
    "gitlab/gitlab-ce:latest"
