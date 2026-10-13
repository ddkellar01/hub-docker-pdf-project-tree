#!/bin/bash
if docker system info 2>/dev/null | grep -q "Username"; then
    echo "Docker is logged in."
else
    echo "Note: Docker is not logged in or running anonymously (public pulls only)."
fi
