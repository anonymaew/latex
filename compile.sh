#!/bin/sh
IMAGE=anonymaew/latex

# compile in docker
docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data \
    "$IMAGE" /bin/sh -c ""

