#!/bin/bash
LOG_DIR="logs"
mkdir -p "$LOG_DIR"
log_message() {
    local level="$1"
    local msg="$2"
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] [$level] $msg" | tee -a "$LOG_DIR/pipeline.log"
}
