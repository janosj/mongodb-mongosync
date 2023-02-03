#!/bin/bash
# Runs a simple node client that inserts a document every second.

source demo.conf

USAGE="USAGE: runQuery.sh <readPreference | primary>"

readPreference="${1:-primary}"
MDB_URI="$MDB_URI_DEST&readPreference=$readPreference"

echo
echo "This will show null until C2C sync is started..."
echo

URI=$MDB_URI node client-queryData.js

