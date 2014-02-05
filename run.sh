#!/bin/bash

mkdir -p tmp/sockets
mkdir -p tmp/pids
mkdir -p log

bundle exec unicorn -c unicorn.rb -E development