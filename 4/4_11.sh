use order_app
db.oders.insertMany([
    {
        "time": Date(),
        "items": [{
            "name": "Fries",
            "quantity": 1,
            "price": 2.99
        },{
            "name": "Diet Coke",
            "quantity": 1,
            "price": 1.99
        }],
        "delivery_cost": 3.50,
        "total": 8.48,
        "user": {
            "name": "Naomi Pentrel",
            "address": "Sample Street 123",
            "email": "naomi@email.com",
            "phone": "12345678910",
            "balance": 10
        },
        "restaurant": {
            "name": "Burger King",
            "address": "Somewhere in Amsterdam"
        }
    },
    {
        "time": Date(),
        "items": [{
            "name": "Fries",
            "quantity": 1,
            "price": 2.99
        },{
            "name": "Diet Coke",
            "quantity": 2,
            "price": 1.99
        }],
        "delivery_cost": 3.50,
        "total": 10.47,
        "user": {
            "name": "Naomi Pentrel",
            "address": "Sample Street 123",
            "email": "naomi@email.com",
            "phone": "12345678910",
            "balance": 10
        },
        "restaurant": {
            "name": "Burger King",
            "address": "Somewhere in Amsterdam"
        }
    }
])
db.orders.findOne()
db.orders.createIndex({"user.email": 1, time: 1})
db.orders.createIndex({"restaurant.name": 1, time: 1})
db.orders.find().sort({total: -1}).limit(1)
db.orders.find().sort({"restaurant.name": 1})
db.orders.find({
    $expr: {
        $gt: [
            "$total",
            "$user.balance"
        ]
    }
})
db.orders.updateMany({}, { $mul: {total: 0.9} })
