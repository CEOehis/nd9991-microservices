#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
dockerpath=ceoehis/ml-microservice

# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username ceoehis
docker tag ml-microservice:latest ${dockerpath}:latest

# Push image to a docker repository
docker push $dockerpath
