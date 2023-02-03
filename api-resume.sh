#!/bin/bash

# https://www.mongodb.com/docs/cluster-to-cluster-sync/current/reference/api/resume/

curl localhost:27182/api/v1/resume -XPOST --data '{ }'

echo

