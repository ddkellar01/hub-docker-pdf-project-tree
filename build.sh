#!/usr/bin/env bash
set -e

# 1. Ensure permissions are set for internal scripts
chmod +x scripts/*.sh

# 2. Authenticate explicitly with Docker Hub
if [ -z "$DOCKER_HUB_ACCESS_TOKEN" ]; then
    echo "Error: DOCKER_HUB_ACCESS_TOKEN environment variable is not set."
    exit 1
fi

echo "$DOCKER_HUB_ACCESS_TOKEN" | docker login -u "Credkellar" --password-stdin

# 3. Setup Buildx builder
docker buildx create --use --name pdf_builder || docker buildx use pdf_builder

# 4. Build and push image
docker buildx build \
  --tag Credkellar/hub-docker-pdf-project-tree:latest \
  --push \
  .

echo "Successfully built and pushed Credkellar/hub-docker-pdf-project-tree:latest!"
