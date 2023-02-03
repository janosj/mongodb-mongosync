#!/bin/bash

# https://www.mongodb.com/docs/cluster-to-cluster-sync/current/quickstart/#initialize-mongosync

# replicaSet option is not required.
# See: https://www.mongodb.com/docs/cluster-to-cluster-sync/current/connecting/onprem-to-onprem/#connection-strings

source demo.conf

echo
echo "Launching mongosync..."
echo "./mongosync --cluster0 <MDB-URI-SRC> --cluster1 <MDB-URI-DEST>"
echo

# Not displaying the actual command, which could reveal passwords.
./mongosync --cluster0 $MDB_URI_SRC --cluster1 "$MDB_URI_DEST"

