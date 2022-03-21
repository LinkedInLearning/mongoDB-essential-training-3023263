use sample_data
db.inventory.findOne()
db.inventory.findOne(
    {
        $and: [
            { "variations.quantity": { $ne: 0} },
            { "variations.quantity": { $exists: true } }
        ]
    }
)
db.inventory.findOne(
    {
        $or: [
            { "variations.variation": "Blue" },
            { "variations.variation": "Green" }
            { "variations.variation": "Teal" },
        ]
    }
)
db.inventory.findOne(
    {
        $nor: [
            { price: { $gt: 8000 } },
            { "variations.variation": "Blue" }
        ]
    }
)
db.inventory.findOne(
    {
        $not: { price: { $gt: 20000 } },
    }
)