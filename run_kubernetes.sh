#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=vinopaul/udacityproj

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy udacityproj --image=vinopaul/udacityproj:4.0

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/udacityproj-578fc7b7c9-xfczn --address 0.0.0.0 8000:80
