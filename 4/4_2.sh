use sample_data
show collections
db.inventory.findOne()
db.orders.findOne()
db.movies.findOne()
db.movies.findOne({"ratings.mndb": 10})
db.movies.findOne({"genres.0": "Musical"})