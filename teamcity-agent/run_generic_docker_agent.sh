#!/bin/bash
ID=$(python -c "import random; print random.randint(101, 999)")
docker run -d --restart always --name=teamcity-agent-docker-$ID --volume /var/run/docker.sock:/var/run/docker.sock --link teamcity-server-instance:teamcity --privileged -e AGENT_NAME=generic_docker_agent-$ID -e SERVER_URL=http://teamcity:8111 generic_teamcity_docker_agent
