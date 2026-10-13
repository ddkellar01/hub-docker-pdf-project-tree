#!/bin/bash
set -e
echo "Starting Master Execution Runner for hub-docker-pdf-project-tree..."
bash scripts/11_check_docker.sh
python3 scripts/12_init_env.py
bash scripts/08_run_pipeline.sh "${1:-library/ubuntu:latest}"
python3 scripts/14_stats_analyzer.py
python3 scripts/16_export_json.py
python3 scripts/17_generate_badges.py
bash scripts/18_verify_checksum.sh
echo "Master execution completed successfully!"
