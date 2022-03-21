use lookup
db.records.insert({
    "name": "Naomi Pentrel",
    "number": "1234567890",
    "profession": "LinkedIn Learning Instructor",
    "website": "naomi.codes"
})
db.records.findOne()
db.records.createIndex({name: 1})
db.records.createIndex({number: 1})