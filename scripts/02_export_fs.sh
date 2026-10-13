#!/bin/bash
IMAGE_NAME=${1:-"library/ubuntu:latest"}
CONTAINER_NAME="temp_extract_container"
echo "Creating temporary container..."
docker create --name "$CONTAINER_NAME" "$IMAGE_NAME"
docker export -o container-fs.tar "$CONTAINER_NAME"
