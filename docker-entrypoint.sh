#!/bin/sh
set -e

if [ -f ./Gemfile ]; then
  bundle install
fi

exec "$@"
