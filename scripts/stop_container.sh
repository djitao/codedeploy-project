#!/bin/bash
set +e

echo "STOP SCRIPT START"

containers=$(docker ps -aq)

if [ -z "$containers" ]; then
  echo "No containers found"
else
  echo "Removing containers: $containers"
  docker rm -f $containers
  EXIT_CODE=$?
  echo "docker rm exit code: $EXIT_CODE"
fi

echo "STOP SCRIPT END"

exit 0
