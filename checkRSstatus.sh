#!/bin/bash
# Convenience script to determine the primary and secondaries of a replica set.
# Documentation: https://www.mongodb.com/docs/manual/tutorial/deploy-replica-set/

# This was borrowed from another demo and retained in case it's useful.
# Not strictly a part of this mongosync demo.

source demo.conf

# Modify this to switch between the source anad destination clusters.
echo "Connecting to Mongo at $MDB_URI_SRC..."
mongosh --quiet "$MDB_URI_SRC" --shell --eval "

  state=rs.status()
  rsNodeCount=state.members.length

  print('\nConnected to local ' + rsNodeCount + '-node Replica Set!')

  print('\nTo view the complete RS configuration, run the following command:')
  print('rs.conf()')

  print('\nTo show the status of all RS members, run this:')
  print('state=rs.status()')
  print('for (let i=0; i<' + rsNodeCount + '; i++) { print( state.members[i]._id, state.members[i].stateStr) }\n')

"


