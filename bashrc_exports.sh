prefix=_DOCKER_SETTINGS__

variables="
HOST_IP=85.143.221.240
HOST_NAME=aeschylus.gr
"
for var in $variables
do
	echo "export $prefix$var"
done

