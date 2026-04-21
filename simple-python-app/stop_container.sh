#!/bin/bash
set -e

containers=$(docker ps -aq)

if [ -z "$containers" ]; then
  echo "No containers to remove"
  exit 0
fi

docker rm -f $containers
