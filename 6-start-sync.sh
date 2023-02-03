#!/bin/sh

# https://www.mongodb.com/docs/cluster-to-cluster-sync/current/quickstart/#synchronize-data-between-clusters


curl localhost:27182/api/v1/start -XPOST --data '
   {
      "source": "cluster0",
      "destination": "cluster1"
   } '

echo 

