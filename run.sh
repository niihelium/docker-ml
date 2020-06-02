#!/bin/bash

docker run --rm -it \
--gpus all \
-p 8888:8888 \
-v $PWD:/workspace \
docker-ml