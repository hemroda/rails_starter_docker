#!/bin/sh

set -e

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

bundle exec rails s -b 0.0.0.0

# If the rails server is running then create or migrate existing database
if [ "${*}" == "./bin/rails server" ]; then
  ./bin/rails db:prepare
fi
