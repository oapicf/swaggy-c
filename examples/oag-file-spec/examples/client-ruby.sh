#!/usr/bin/bash
set -o nounset

cd ../
make build-ruby test-ruby
cd examples/

node usageruby.rb
