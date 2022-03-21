db.movies.explain("executionStats").aggregate( [
     { $project: {
          release_year: {$year: "$release_year"},
          title: 1
     } },
     { $lookup: {
          from: "inventory",
          localField: "release_year",
          foreignField: "year",
          as: "year"
     } }
] )