#!/bin/bash
set -e

containerid=$(docker ps -q)

if [ -n "$containerid" ]; then
  docker rm -f $containerid
else
  echo "No running containers found"
fi
