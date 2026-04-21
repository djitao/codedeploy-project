#!/bin/bash
set -e

docker ps -aq | xargs -r docker rm -f
