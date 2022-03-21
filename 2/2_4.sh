mkdir replicaset
cd replicaset
openssl rand -base64 755 > keyfile
chmod 400 keyfile
mkdir -p m{1,2,3}/db
touch m1.conf
cp m1.conf m2.conf
cp m1.conf m3.conf
mongod -f m1.conf
mongod -f m2.conf
mongod -f m3.conf
mongosh
use admin
config = {
    _id: "mongodb-essential-rs",
    members: [
        { _id: 0, host: "localhost:27017" },
        { _id: 1, host: "localhost:27018" },
        { _id: 2, host: "localhost:27019" }
    ]
};
rs.initiate(config)
db.createUser({user: 'naomi', pwd: passwordPrompt(), roles: ["root"]})
db.getSiblingDB("admin").auth("naomi")
rs.add("localhost:27018")
rs.add("localhost:27019")
rs.status()
db.serverStatus()['repl']