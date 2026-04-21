#!/bin/bash
set -e

echo "STOP SCRIPT EXECUTED"

containers=$(docker ps -aq)

if [ -z "$containers" ]; then
  echo "No containers to remove"
  exit 0
fi

echo "Containers found: $containers"
docker rm -f $containers
