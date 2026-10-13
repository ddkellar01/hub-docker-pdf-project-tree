#!/bin/bash
CONTAINER_NAME="temp_extract_container"
echo "Cleaning up temporary container and archive..."
docker rm "$CONTAINER_NAME"
rm -f container-fs.tar
