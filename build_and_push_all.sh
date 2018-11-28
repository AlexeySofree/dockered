#!/usr/bin/env sh

set -e
set -x

./build_base_image.sh
docker push alexeysofree/centos7-base:latest

cd lamp
docker-compose build
docker-compose push
cd -

cd p2p
docker-compose build
docker-compose push
cd -

cd iot
docker-compose build
docker-compose push
cd -

cd video_surveillance
docker-compose build
docker-compose push
cd -