#! /usr/bin/env bash

PORT=8080
PACKAGES=$PWD/packages/

test -d $PACKAGES || mkdir $PACKAGES

./py.sh exec pypi-server run -p $PORT $PACKAGES &
