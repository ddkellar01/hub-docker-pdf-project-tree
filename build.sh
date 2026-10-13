#!/usr/bin/env bash
set -e

# Use your specified username and variables
DOCKER_USER="${DOCKERHUB_USERNAME:-credkellar}"
IMAGE_NAME="hub-docker-pdf-project-tree"
TAG="latest"

echo "==> Preparing build environment for ${DOCKER_USER}/${IMAGE_NAME}:${TAG}..."

# 1. Ensure internal script permissions
chmod +x scripts/*.sh

# 2. Authenticate with Docker Hub using DOCKERHUB_TOKEN
if [ -z "$DOCKERHUB_TOKEN" ]; then
    echo "Error: DOCKERHUB_TOKEN environment variable is missing."
    exit 1
fi

echo "$DOCKERHUB_TOKEN" | docker login -u "$DOCKER_USER" --password-stdin

# 3. Setup Buildx builder instance
docker buildx create --use --name pdf_builder || docker buildx use pdf_builder

# 4. Build and push using the correct tag
docker buildx build \
  --tag "${DOCKER_USER}/${IMAGE_NAME}:${TAG}" \
  --push \
  .

echo "==> Successfully built and pushed ${DOCKER_USER}/${IMAGE_NAME}:${TAG}!"
