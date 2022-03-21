db.movies.findOne()
db.movies.aggregate([
    {
        $project: {
            title: 1,
            actors: {
                $function: {
                    body: 'function(actors) { return actors.sort(); }',
                    args: [ "$actors" ],
                    lang: "js"
                }
            }
        }
    }
])