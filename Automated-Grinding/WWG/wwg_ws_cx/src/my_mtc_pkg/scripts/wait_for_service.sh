#!/bin/bash

# Wait until the service is available
until rosservice list | grep -q "/get_planning_scene"; do
  echo "Waiting for /get_planning_scene service to be available..."
  sleep 1
done

echo "/get_planning_scene service is now available. Starting task constructor demo..."
exec "$@"

