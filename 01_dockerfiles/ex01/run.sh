#!/bin/bash
docker build -t byotss .
docker container run --detach --name byotss --publish 9987:9987/udp --publish 30033:30033/tcp --publish 10011:10011/tcp -it --rm byotss
