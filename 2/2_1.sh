mkdir mongodbessentials
cd mongodbessentials
mkdir mongod_only
mongod --dbpath mongod_only
mongosh
show databases
db.test.insertOne({"hello": "world"})