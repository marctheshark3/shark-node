#!/bin/bash

if ! command -v docker &> /dev/null; then
    echo "Docker is not installed. Please install Docker first."
    exit 1
fi

if ! command -v docker compose &> /dev/null; then
    echo "Docker Compose is not installed. Please install Docker Compose first."
    exit 1
fi

if [ ! -f .env ]; then
    cp .env.example .env
    echo "Created .env file from template"
fi

docker compose up -d

echo "Shark Node is starting up..."
echo "Check the logs with: docker compose logs -f"