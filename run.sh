#!/bin/bash

rm -rf tmp
rm -rf log

mkdir -p tmp/sockets
mkdir -p tmp/pids
mkdir -p log

source /etc/profile.d/rbenv.sh
export RBENV_VERSION=mri

bundle install --path /bundled_gems
bundle exec unicorn -c unicorn.rb -E development