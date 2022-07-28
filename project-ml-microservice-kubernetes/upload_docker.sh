#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=vinopaul/apiv1.0.0

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag db9d9b372c24 vinopaul/udacityproj:4.0

# Step 3:
# Push image to a docker repository
docker push vinopaul/udacityproj:4.0
