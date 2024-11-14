#!/bin/bash

# Define the list of application names
APP_NAMES=("Obsidian" "floorp" "Postman" "Slack")

# Iterate through each application name
for app in "${APP_NAMES[@]}"; do
  if pgrep -xq "$app"; then
    echo "$app is running."
  else
    open -a $app
  fi
done

# Docker
if [ "$(docker info >/dev/null 2>&1 && echo "running")" == "running" ]; then
  echo "Docker is already running."
else
  open -a Docker
fi
