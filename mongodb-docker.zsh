#!/bin/zsh

compose_name=mongo

case "$1" in
up) 
    current_dir=`dirname $0`
    chdir $current_dir
    docker stack deploy --compose-file mongodb-stack.yml $compose_name 
    echo
    echo go to http://127.0.0.1:8081
    ;;
down) 
    docker stack rm $compose_name 
    ;;
*) 
    echo "$0 [up|down]"
    ;;
esac
