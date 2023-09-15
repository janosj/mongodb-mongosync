# Mongosync

Demonstrates the ability of *mongosync* to continually replicate data between two MongoDB clusters.

Use launchRS.source.sh to deploy a MongoDB Replica Set on your local machine, to act as the *source* cluster.

Use launchRS.dest.sh to deploy a second Replica Set on your local machine, to act as the *destination* cluster. Alternatively, a MongoDB Atlas cluster may be used - just modify MDB_URI_DEST in demo.conf.

Convenience scripts are provided to install *mongosync* and run various *mongosync* operations (these scripts assume you will be running mongosync on your local MacOS). Client utilities, written in node.js, are provided to write data to the source cluster and read it back from the destination cluster.

# Demonstration Scripts

|Script|Purpose|
|---|---|
| 0a-node-setup.sh | Run once. Sets up node dependencies for the test clients.
| 0b-install-mongosync.sh | Run once. Downloads and installs mongosync on your local machine. You may need to adjust this to get a newer version or use a platform other than MacOS.
| 1-launchRS.src.sh | Launches a replica set on your local machine to act as the source cluster. Defaults to a 1-node RS, but you can specify larger node counts. Mongosync just requires the OpLog.
| 2-launchRS.dest.sh | Launches a replica set on your local machine to act as the destination cluster. Again, defaults to a 1-node RS but you can make it larger. To use Atlas, don't run this script, just modify MDB_URI_DEST in demo.conf.
| 3-runInserts.sh | Launches a node.js client that performs continual inserts at the source using a specified writeConcern.
| 4-runQuery.sh | Launches a node.js client that performs continual queries at the destination using a specified readPreference.
| 5-init-mongosync.sh | Launches mongosync.
| 6-start-sync.sh | Initiates synchronization to the destination cluster.
| api*.sh | Runs varies mongosync commands.
| shutdownRS.sh | Shuts down the Replica Set and removes the data files.
| checkRSstatus.sh | Originated in another demo, but maybe still useful here. A convenience script to list the primary and secondaries of a Replica Set.
| killMDBprocess.sh | Originated in another demo, but maybe still useful here. Use shutdownRS instead.

# Prerequisites

- *launchRS* requires MongoDB to be installed (but not running) on your local machine.
- mongosh (only required by checkRSstatus.sh, which is maybe not even useful here)
- The two test clients require node.js.
- The mongosync binary is downloaded and installed (i.e. extracted) by the *install-mongosync* script.



