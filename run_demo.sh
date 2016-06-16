#!/bin/sh

cp data/access.log /tmp
cd test
./run_tests.sh
