db.mock_movie_data.aggregate([
    { $project: {
        release_year: { $year: "$release_year" },
        genres: 1,
        runtime_min: 1,
        title: 1
    } },
    { $match: { release_year: { $gte: 2000 } } },
    { $unwind: "$genres"},
    { $group: {
        _id: {
            genres: "$genres",
        },
        movies: { $push: { title: "$title", runtime_min: "$runtime_min", release_year: "$release_year"} },
        count: { $sum: 1 }
    } },
    { $out: { db: "sample_data", coll: "genres2000" } }
])