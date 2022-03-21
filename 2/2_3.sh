mkdir replica_set_cmdline
cd replica_set_cmdline
openssl rand -base64 755 > keyfile
chmod 400 keyfile
mkdir -p m{1,2,3}/db
mongod --replSet myReplSet --dbpath ./m1/db --logpath ./m1/mongodb.log --port 27017 --fork --keyFile ./keyfile
mongod --replSet myReplSet --dbpath ./m2/db --logpath ./m2/mongodb.log --port 27018 --fork --keyFile ./keyfile
mongod --replSet myReplSet --dbpath ./m3/db --logpath ./m3/mongodb.log --port 27019 --fork --keyFile ./keyfile
mongosh “mongodb://localhost:27017”
rs.initiate()
use admin
db.createUser({user: 'naomi', pwd: passwordPrompt(), roles: ["root"]})
db.getSiblingDB("admin").auth("naomi", passwordPrompt())
rs.add("localhost:27018")
rs.add("localhost:27019")
rs.status()
db.serverStatus()['repl']
rm -rf mongodbessentials