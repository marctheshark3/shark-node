#!/bin/bash

# Check prerequisites
if ! command -v docker &> /dev/null; then
    echo "Error: Docker is not installed"
    exit 1
fi

if ! command -v docker compose &> /dev/null; then
    echo "Error: Docker Compose is not installed"
    exit 1
fi

# Create .env if it doesn't exist
if [ ! -f .env ]; then
    cp .env.example .env
    echo "Created .env file from template"
    echo "Please update the API key hash in .env for security"
fi

# Start the node
echo "Starting Ergo light client..."
docker compose up -d

# Wait for node to start and display initial status
echo "Waiting for node to initialize..."
sleep 10

echo "
Light client is starting up!
Monitor logs with: docker compose logs -f

Expected initial sync time: 5-15 minutes
Check LIGHT_CLIENT.md for more information and troubleshooting"
