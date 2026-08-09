#!/usr/bin/bash
set -o nounset

cd ../
make build-ruby
cd examples/

node usageruby.rb
