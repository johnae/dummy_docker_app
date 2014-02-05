#!/bin/bash

mkdir -p tmp/sockets
mkdir -p tmp/pids
mkdir -p log

source /etc/profile.d/rbenv.sh
export RBENV_VERSION=2.0.0-p247

bundle install --deployment
bundle exec unicorn -c unicorn.rb -E development