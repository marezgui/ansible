#!/usr/bin/env bash

docker build . -t ubuntu-dev
docker build . -f mpx.Dockerfile -t mpx-dev
