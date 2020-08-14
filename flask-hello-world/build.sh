#!/bin/bash

export DOCKER_BUILDKIT=1
docker build -t flask-hello-world .
