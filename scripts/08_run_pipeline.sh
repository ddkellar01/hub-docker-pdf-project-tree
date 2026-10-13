#!/bin/bash
IMAGE=${1:-"library/ubuntu:latest"}
bash scripts/01_pull_image.sh "$IMAGE"
bash scripts/02_export_fs.sh "$IMAGE"
bash scripts/03_extract_fs.sh
bash scripts/04_clean_temp.sh
python3 scripts/05_filter_pdf.py
python3 scripts/06_generate_tree.py
python3 scripts/07_validate_output.py
echo "Pipeline complete!"
