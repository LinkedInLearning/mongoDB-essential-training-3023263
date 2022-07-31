db.inventory.aggregate( [
    {
        $bucket: {
            groupBy: "$year",
            boundaries: [1980, 1990, 2000, 2010, 2020],
            default: "Other"        # items outside the boundaries
        }
    }
] )

db.inventory.aggregate( [
    {
        $bucket: {
            groupBy: "$year",
            boundaries: [1980, 1990, 2000, 2010, 2020],
            default: "Other",
            output: {
                count: { $sum: 1 }
                cars: { $push:
                    {name: "$name", model: "$model"}
                }
            }
        }
    }
] )

db.inventory.aggregate( [
    {
        $bucketAuto: {
            groupBy: "$year",
            buckets: 5
        }
    }
] )