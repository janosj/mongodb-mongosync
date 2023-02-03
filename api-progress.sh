#!/bin/bash

# https://www.mongodb.com/docs/cluster-to-cluster-sync/current/reference/api/progress/

curl localhost:27182/api/v1/progress -XGET

echo

