#!/bin/sh

set -e
#set -x

DIR=$(mktemp -d)
function finish {
  rm -rf "$DIR"
}
trap finish EXIT

./combine_input.py "$DIR/input.json" test_cases/*.input.json

mkdir "$DIR/config"
cp ../config/*.conf "$DIR/config"
rm "$DIR"/config/input-* "$DIR"/config/output-*
cp test_input_output.conf "$DIR/config"

logstash -w 1 -f "$DIR/config" <"$DIR/input.json" >"$DIR/output.json"

./compare.py "$DIR/output.json" test_cases/*.input.json
