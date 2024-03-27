#! /usr/bin/env bash
CONTAINER_PORT=8080
CONTAINER_PACKAGES=/home/packages

cp `which batch-in-venv.sh` docker/install-server.sh
cat >>docker/install-server.sh <<INSTALLER
pyenv exec python -m pip install pipenv
pyenv exec pipenv install --skip-lock
INSTALLER

py.sh pipfile >docker/Pipfile
mklauncher.sh python pypi-server run -p $CONTAINER_PORT $CONTAINER_PACKAGES >docker/pypi.sh

docker-build.sh
