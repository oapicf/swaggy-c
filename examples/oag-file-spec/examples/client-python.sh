#!/usr/bin/bash
set -o nounset

cd ../
make build-python test-python
cd examples/

node usage_python.py
