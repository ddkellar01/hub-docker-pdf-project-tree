#!/bin/bash
TARGET_IMAGE=${DOCKER_TARGET_IMAGE:-"library/ubuntu:latest"}
echo "Running containerized pipeline for: $TARGET_IMAGE"
exec /app/scripts/08_run_pipeline.sh "$TARGET_IMAGE"
