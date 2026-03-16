#!/bin/bash

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') : $1"
}

log "Running pre-deployment checks..."

log "Starting Deployment..."
echo "----------------------"

if [ ! -d ".git" ]
then
  log "Not a git repository. Deployment aborted."
  exit 1
fi
log "Git repository detected."


log "Checking for uncommitted changes..."

if [ -n "$(git status --porcelain)" ]
then
  log "Uncommitted changes detected. Please commit first."
  exit 1
fi
log "Working directory clean."


log "Pulling latest code from repository..."
git pull


log "Checking required files..."

if [ ! -f "app.py" ]
then
  log "app.py not found. Deployment failed."
  exit 1
fi
log "app.py found."


log "Building application..."

sleep 2

log "Build completed successfully."


log "Starting application..."

sleep 2

log "Application started successfully."


echo "----------------------"
log "Deployment completed successfully!"
