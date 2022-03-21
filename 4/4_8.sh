use blog
session = db.getMongo().startSession( { readPreference: { mode: "primary" } } )
session.startTransaction()
session.getDatabase("blog").updateMany( {}, {$set: {message: "Transaction occured"} } )
session.commitTransaction()
session.endSession()
db.authors.find()