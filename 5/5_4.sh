db.inventory.findOne()
db.inventory.aggregate( [
    {
        $unwind: "$variations"
    }
] )
db.inventory.findOne()
db.inventory.aggregate( [
    {
        $unwind: "$variations",
    },
    {
        $match: { "variations.variation": "Purple" }
    }
] )
db.inventory.aggregate( [
    {
        $match: { "variations.variation": "Purple" }
    },
    {
        $unwind: "$variations",
    },
    {
        $match: { "variations.variation": "Purple" }
    }
] )
