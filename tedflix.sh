#!/bin/sh
CMD=$1
ROOT_PATH=${2:-$(pwd)}
export STUFF_PATH=$ROOT_PATH/stuff
export FAST_PATH=$ROOT_PATH/fast
export CONFIG_PATH=$FAST_PATH/config/tedflix
case "$CMD" in
    up)
        docker compose -f tedflix/docker-compose.yaml pull
        docker compose -f tedflix/docker-compose.yaml up -d --build --remove-orphans
        ;;
    down)
        docker compose -f tedflix/docker-compose.yaml down
        ;;
    restart)
        docker compose -f tedflix/docker-compose.yaml restart
        ;;
    *)
        echo "Usage: $0 up|down|restart"
        exit 1
        ;;
esac

exit 0