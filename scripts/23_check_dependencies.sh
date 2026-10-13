#!/bin/bash
for cmd in docker python3 tar; do
    if ! command -v "$cmd" &> /dev/null; then
        echo "Error: Required command '$cmd' is missing."
        exit 1
    fi
done
echo "All core system dependencies are installed."
