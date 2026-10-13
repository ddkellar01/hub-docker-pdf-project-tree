#!/bin/bash
IMAGE_NAME=${1:-"library/ubuntu:latest"}
echo "Pulling Docker image: $IMAGE_NAME"
docker pull "$IMAGE_NAME"
