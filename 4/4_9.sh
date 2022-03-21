use sample_data
db.movies.findOne()
db.movies.find({ title: 1, ratings: 1 })
db.movies.find(
    { title: 1, ratings: 1 }
)
