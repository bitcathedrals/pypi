#! /usr/bin/env bash

case $1 in
  "create")
    shift

    user=$1
    password=$2

    htpasswd -sc -b htpasswd $user $password
   ;;
  "add")
    shift

    user=$1
    password=$2

    htpassword -sb htpasswd $user $password
    ;;
  *|"help")
    cat <<HELP
passwd: create or add to a htpasswd file in htpasswd

create  = create a new htpasswd file <USER> <PASSWORD>
add     = add a new user/password    <USER> <PASSWORD>
HELP
  ;;
esac
