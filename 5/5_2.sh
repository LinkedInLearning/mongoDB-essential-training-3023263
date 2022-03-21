use sample_data
db.inventory.findOne()
db.inventory.aggregate( [
    {
        $group: {
            _id: "$source",
        }
    }
] )
db.inventory.aggregate( [
    {
        $group: {
            _id: "$source",
            count: { $sum: 1 }
        }
    }
] )
db.inventory.aggregate( [
    {
        $group: {
            _id: "$source",
            count: { $sum: 1 },
            items: { $push: "$name" }
        }
    }
] )
db.inventory.aggregate( [
    {
        $group: {
            _id: "$source",
            count: { $sum: 1 },
            items: { $push: "$name" },
            avg_price: { $avg: "$price"}
        }
    }
] )