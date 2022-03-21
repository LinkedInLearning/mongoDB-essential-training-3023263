db.orders.aggregate([
     { $lookup: {
            from: "inventory",
            localField: "car_id",
            foreignField: "_id",
            as: "car_id"
     } }
])