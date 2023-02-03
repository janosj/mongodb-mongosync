#!/bin/bash

# https://www.mongodb.com/docs/cluster-to-cluster-sync/current/reference/api/pause/#std-label-c2c-api-pause

curl localhost:27182/api/v1/pause -XPOST --data '{ }'

echo

