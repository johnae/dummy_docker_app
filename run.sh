#!/bin/bash

mkdir -p tmp/sockets
mkdir -p tmp/pids
mkdir -p log

source /etc/profile.d/rbenv.sh
export RBENV_VERSION=mri

bundle install --deployment
bundle exec unicorn -c unicorn.rb -E development