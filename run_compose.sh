#!/bin/bash
set -e
log=$(docker-compose -f docker-compose_app.yml up --build)
exitcode=$(echo $log | grep 'exited with code' | sed 's/^.*exited with code \([0-9]\+\).*$/\1/g')
echo "$log"
exit $exitcode
