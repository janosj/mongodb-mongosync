#!/bin/bash

# https://www.mongodb.com/docs/cluster-to-cluster-sync/current/reference/api/commit/

curl localhost:27182/api/v1/commit -XPOST --data '{ }'

echo

