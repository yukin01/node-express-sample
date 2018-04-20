#!/bin/sh
set -e

if [ ! -s "/app/package.json" ]; then
  express -f --view=pug /app
  echo 'Express templete was generated.'
else
  echo 'Express app already exists.'
fi

exec tini -- $@