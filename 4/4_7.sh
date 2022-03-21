use sample_data
db.movies.findOne()
db.movies.find({genres: "Comedy"})
db.movies.find({genres: ["Comedy", "Drama", "Thriller"]})
db.movies.find({genres: { $all: ["Comedy", "Drama"] } })
db.inventory.findOne()
db.inventory.find(
    {
        variations: {
            $elemMatch: {
                variation: "Blue",
                quantity: { $gt: 8  }
            }
        }
    }
)
db.movies.findOne()
db.movies.updateOne(
    {
        title: 'The Adventures of Tom Thumb & Thumbelina'
    },
    {
        $push: { genres: "Test" }
    }
)
db.movies.findOne( {title: 'The Adventures of Tom Thumb & Thumbelina'} )
db.movies.updateOne(
    {
        title: 'The Adventures of Tom Thumb & Thumbelina'
    },
    {
        $addToSet: { genres: "Test" }
    }
)
db.movies.findOne( {title: 'The Adventures of Tom Thumb & Thumbelina'} )
db.movies.updateOne(
    {
        title: 'The Adventures of Tom Thumb & Thumbelina'
    },
    {
        $addToSet: { genres: "Green" }
    }
)
db.movies.findOne( {title: 'The Adventures of Tom Thumb & Thumbelina'} )
db.movies.updateOne(
    {
        title: 'The Adventures of Tom Thumb & Thumbelina'
    },
    {
        $pop: { genres: 1 }
    }
)
db.movies.findOne( {title: 'The Adventures of Tom Thumb & Thumbelina'} )
db.movies.updateOne(
    {
        title: 'The Adventures of Tom Thumb & Thumbelina'
    },
    {
        $pop: { genres: 1 }
    }
)
db.movies.findOne( {title: 'The Adventures of Tom Thumb & Thumbelina'} )
