#! /usr/bin/env bash

REPO=http://cracker.wifi:8080

if [[ -z $1 ]]
then
  echo "a directory with packages is required as an argument. exiting."
  exit 1
fi

if [[ ! -d $1 ]]
then
  echo "the argument \"$1\" is not a directory. exiting."
  exit 1
fi

exec twine upload --repository-url $REPO $1/*

