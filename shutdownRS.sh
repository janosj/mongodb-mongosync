#!/bin/bash
# Shuts down the locally deployed replica sets.

source demo.conf

db_port=$BASE_MDB_PORT_SRC
echo "Stopping source RS ($NODE_COUNT_SRC MDB processes) ..."
for (( i=1; i<=$NODE_COUNT_SRC; i++ ))
do 
  echo
  echo "Stopping MDB$i on port $db_port..."
  mongosh --quiet --port $db_port --eval "db = db.getSiblingDB('admin'); db.shutdownServer();"
  ((db_port++))
done

db_port=$BASE_MDB_PORT_DEST
echo "Stopping destination RS ($NODE_COUNT_DEST MDB processes) ..."
for (( i=1; i<=$NODE_COUNT_DEST; i++ ))
do 
  echo
  echo "Stopping MDB$i on port $db_port..."
  mongosh --quiet --port $db_port --eval "db = db.getSiblingDB('admin'); db.shutdownServer();"
  ((db_port++))
done

echo 
echo "Verifying...  should see nothing running..."
echo "ps -ef | grep mongod"
ps -ef | grep mongod
echo

echo "Waiting a bit..."
sleep 3

echo "Deleting data directories..."
rm -rf $HOME/myStuff/demos/mongosync-demo

