#!/bin/bash
if ! command -v docker &> /dev/null; then
    echo "Error: Docker is not installed or not in PATH."
    exit 1
fi
if ! docker info &> /dev/null; then
    echo "Error: Docker daemon is not running."
    exit 1
fi
echo "Docker check passed."
