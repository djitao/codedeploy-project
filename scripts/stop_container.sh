#!/bin/bash
set -e

echo "=== CLEANING CONTAINERS ==="

docker ps -aq | xargs -r docker rm -f || true
