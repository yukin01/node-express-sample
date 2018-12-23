#!/bin/sh
set -e
docker container run -it --rm -v $PWD/node/app:/app node:10-alpine npx express-generator --no-view /app