db.authors.insertOne({"name": "Joe Nash"})
db.authors.insertMany([
    {"name": "Eliot Horowitz"},
    {"name": "Dwight Merriman"},
    {"name": "Kevin P. Ryan"}
])
db.authors.find()
db.authors.find({ "name": "Naomi Pentrel"})
db.authors.find({ name: "Naomi Pentrel"})
db.authors.updateOne(
    { name: "Naomi Pentrel"},
    { $set: { website: "https://naomi.codes" } }
)
db.authors.find({ name: "Naomi Pentrel"})
db.authors.updateMany(
    { },
    { $set: { books: [] } }
)
db.authors.find()
db.authors.deleteOne({ name: "Joe Nash" })