FROM python:3.10-slim

# Install Docker CLI and core utilities
RUN apt-get update && apt-get install -y \
    docker.io \
    bash \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy scripts and codebase
COPY . /app

# Make scripts executable
RUN chmod +x scripts/*.sh

ENTRYPOINT ["bash", "scripts/09_docker_entrypoint.sh"]
