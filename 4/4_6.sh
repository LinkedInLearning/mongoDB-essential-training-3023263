use blog
show collections
db.authors.find()
db.authors.updateOne(
    { name: "Naomi Pentrel" },
    { $set: { message: "Hello World!" } }
)
db.authors.find()
db.authors.updateMany(
    {},
    { $set: { message: "Hello" } }
)
db.authors.find()
db.authors.updateMany(
    {},
    { $unset: { message: "" } }
)
db.authors.find()
