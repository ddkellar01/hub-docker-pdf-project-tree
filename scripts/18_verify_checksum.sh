#!/bin/bash
OUTPUT_FILE="output/TREE.md"
if [ -f "$OUTPUT_FILE" ]; then
    sha256sum "$OUTPUT_FILE" > "output/TREE.md.sha256"
    echo "Checksum generated for TREE.md."
else
    echo "Error: Output file missing for checksum generation."
    exit 1
fi
