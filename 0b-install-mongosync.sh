# Download from the MongoDB Download Center
# Docs: https://www.mongodb.com/docs/cluster-to-cluster-sync/current/installation/

echo
echo "Downloading Mongosync 1.1 for MacOS..."
curl -o mongosync.zip https://fastdl.mongodb.org/tools/mongosync/mongosync-macos-x86_64-1.1.0.zip

tar xopf mongosync.zip

mv mongosync-*/bin/mongosync .

rm -rf mongosync-*
rm -rf mongosync.zip

echo "Mongosync binary extracted to current directory and ready for use."
echo

