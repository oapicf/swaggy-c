#!/usr/bin/bash
set -o nounset

cd ../
make build-javascript test-javascript
cd examples/

node usage-javascript.js
