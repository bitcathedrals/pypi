#! /usr/bin/env bash

PORT=8080
PACKAGES=$PWD/packages/
./py.sh exec pypi-server run -p $PORT $PACKAGES &
