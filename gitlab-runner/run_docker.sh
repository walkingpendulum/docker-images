#!/bin/bash

docker run -d \
    --name gitlab-runner \
    --restart always \
    --volume /var/run/docker.sock:/var/run/docker.sock \
    "gitlab/gitlab-runner:latest"

