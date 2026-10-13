#!/bin/bash
parse_arguments() {
    while [[ "$#" -gt 0 ]]; do
        case $1 in
            -i|--image) IMAGE_NAME="$2"; shift ;;
            -h|--help) echo "Usage: ./run.sh -i <docker-image>"; exit 0 ;;
            *) echo "Unknown parameter: $1"; exit 1 ;;
        esac
        shift
    done
}
