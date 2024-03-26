#! /usr/bin/env bash
CONTAINER_PORT=8080
CONTAINER_PACKAGES=/home/packages

cp `which run-in-env.sh` docker/
py.sh pipfile >docker/Pipfile
mklauncher.sh pypi-server run -p $CONTAINER_PORT $CONTAINER_PACKAGES >docker/pypi-launcher.sh

./py.sh docker-build
