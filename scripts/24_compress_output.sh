#!/bin/bash
OUTPUT_DIR="output"
ARCHIVE_NAME="hub-docker-pdf-project-tree-output.tar.gz"

if [ -d "$OUTPUT_DIR" ]; then
    tar -czf "$ARCHIVE_NAME" "$OUTPUT_DIR"
    echo "Compressed output directory into $ARCHIVE_NAME."
else
    echo "Error: Output directory not found for compression."
    exit 1
fi
