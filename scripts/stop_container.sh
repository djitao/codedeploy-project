#!/bin/bash

echo "STOP SCRIPT START"

containers=$(docker ps -aq 2>/dev/null || true)

if [ -z "$containers" ]; then
  echo "No containers found"
  exit 0
fi

docker rm -f $containers 2>/dev/null || true

echo "STOP SCRIPT END"
exit 0
