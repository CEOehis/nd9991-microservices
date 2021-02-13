#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Build image and add a descriptive tag
docker build -t ml-microservice .

# List docker images
docker image ls

# Run flask app
docker run -p 8000:80 ml-microservice