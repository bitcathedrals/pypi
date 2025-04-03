#! /usr/bin/env bash

PORT=8080
PACKAGES=$PWD/packages/

test -d $PACKAGES || mkdir $PACKAGES

exec ./py.sh run pypi-server run -p $PORT $PACKAGES &
