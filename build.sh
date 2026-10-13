#!/usr/bin/env bash
set -e

# 1. Ensure permissions are set for internal scripts
chmod +x scripts/*.sh

# 2. Authenticate explicitly with Docker Hub
if [ -z "$DOCKERHUB_USERNAME" ]; then
    echo "Error: DOCKERHUB_TOKEN environment variable is not set."
    exit 1
fi

echo "$DOCKERHUB_TOKEN" | docker login -u "credkellar" --password-stdin

# 3. Setup Buildx builder
docker buildx create --use --name pdf_builder || docker buildx use pdf_builder

# 4. Build and push image
docker buildx build \
  --tag credkellar/hub-docker-pdf-project-tree:latest \
  --push \
  .

echo "Successfully built and pushed credkellar/hub-docker-pdf-project-tree:latest!"
