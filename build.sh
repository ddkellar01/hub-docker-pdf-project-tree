#!/usr/bin/env bash
set -e

# Configuration using your exact username and token variables
DOCKER_USER="credkellar"
IMAGE_NAME="hub-docker-pdf-project-tree"
TAG="latest"
FULL_IMAGE_NAME="${DOCKER_USER}/${IMAGE_NAME}:${TAG}"

echo "==> Preparing build for ${FULL_IMAGE_NAME}..."

# 1. Verify token is present
if [ -z "$DOCKERHUB_TOKEN" ]; then
    echo "Error: DOCKERHUB_TOKEN environment variable is missing."
    echo "Run: export DOCKERHUB_TOKEN='your_token_here'"
    exit 1
fi

# 2. Authenticate with Docker Hub
echo "==> Authenticating with Docker Hub..."
echo "$DOCKERHUB_TOKEN" | docker login -u "$DOCKER_USER" --password-stdin

# 3. Set permissions if scripts folder exists
if [ -d "scripts" ]; then
    chmod +x scripts/*.sh
fi

# 4. Build the Docker image standardly
echo "==> Building image..."
docker build -t "$FULL_IMAGE_NAME" .

# 5. Push the image to get your green check
echo "==> Pushing image to Docker Hub..."
docker push "$FULL_IMAGE_NAME"

echo "==> SUCCESS: ${FULL_IMAGE_NAME} pushed successfully!"
