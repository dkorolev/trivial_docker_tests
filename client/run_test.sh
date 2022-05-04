#!/bin/bash

# See `Dockerfile` for run instructions.

URL=${1:-http://172.17.0.1:3000}  # The IP address of the Docker host node.

TESTS="2+2 2+3 3+3 10+10 17+25"

for i in $TESTS ; do
  A=$(echo $i | cut -f1 -d+)
  B=$(echo $i | cut -f2 -d+)
  echo -n "$A+$B : "
  GOLDEN=$((A + B))
  ACTUAL=$(curl -s $URL/$A/$B 2>/dev/null)
  [ "$GOLDEN" = "$ACTUAL" ] && echo PASS || echo "FAIL, actual '$ACTUAL', golden '$GOLDEN'"
done
