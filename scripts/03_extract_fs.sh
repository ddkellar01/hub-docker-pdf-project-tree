#!/bin/bash
TARGET_DIR="extracted-fs"
echo "Extracting filesystem tarball..."
mkdir -p "$TARGET_DIR"
tar -xf container-fs.tar -C "$TARGET_DIR"
