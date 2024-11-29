@echo off

REM Check if Docker is installed
docker --version > nul 2>&1
if errorlevel 1 (
    echo Docker is not installed. Please install Docker first.
    exit /b 1
)

REM Check if Docker Compose is installed
docker compose version > nul 2>&1
if errorlevel 1 (
    echo Docker Compose is not installed. Please install Docker Compose first.
    exit /b 1
)

REM Create environment file if it doesn't exist
if not exist .env (
    copy .env.example .env
    echo Created .env file from template
)

REM Build and start the containers
docker compose up -d

echo Shark Node is starting up...
echo Check the logs with: docker compose logs -f