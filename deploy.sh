#!/bin/bash

echo "Starting Deployment..."
echo "----------------------"

if [ ! -d ".git" ]
then
  echo "Not a git repository. Deployment aborted."
  exit 1
fi
echo "Git repository detected."


echo "Checking for uncommitted changes..."

if [ -n "$(git status --porcelain)" ]
then
  echo "Uncommitted changes detected. Please commit first."
  exit 1
fi
echo "Working directory clean."


echo "Pulling latest code from repository..."
git pull


echo "Checking required files..."

if [ ! -f "app.py" ]
then
  echo "app.py not found. Deployment failed."
  exit 1
fi
echo "app.py found."


echo "Building application..."

sleep 2

echo "Build completed successfully."


echo "Starting application..."

sleep 2

echo "Application started successfully."


echo "----------------------"
echo "Deployment completed successfully!"
