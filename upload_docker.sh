#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

dockerpath=app

echo "Docker ID and Image: $dockerpath"
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 948036832276.dkr.ecr.us-east-2.amazonaws.com
docker tag $dockerpath 948036832276.dkr.ecr.us-east-2.amazonaws.com/udacity:latest

docker push 948036832276.dkr.ecr.us-east-2.amazonaws.com/udacity:latest