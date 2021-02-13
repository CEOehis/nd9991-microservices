#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath=ceoehis/ml-microservice

# Run the Docker Hub container with kubernetes
kubectl run ml-prediction-service --image=$dockerpath --port=80

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
# Wait for 10 seconds for pod to be in READY state
sleep 10
kubectl port-forward ml-prediction-service 8000:80
