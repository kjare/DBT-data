/*
db.book1.insertOne({
    title: 'oracle',
    price: 400,
    ISBN: 'ora-4'
    author: {
        authorName: 'smith',
        phone: [111, 234]
    }
})

db.book1.find({
    title: true,
    price: 1,
    ISBN: 1,
    author.authorName: 1,
}
})

db.book1.insertOne({
    title: 'redis',
    price: {
        cost: 1700,
        currency: 'rs'
    },
    ISBN: 'red-4',
    author: [{
            authorName: 'jones',
            email: ['first@com', 'second@com']
        },
        {
            authorName: 'martin',
            city: 'pune',
            website: 'https://martin.redis.io'
        }
    ]
})
db.book2.insertMany([{
        _id: 1,
        title: 'MYSQL',
        cost: 5354
    },
    {
        _id: 2,
        title: 'hBASE',
        cost: 67654
    }
])

db.author.insertMany([{
        _id: 1,
        title: 'being Awesome',
        authorName: 'jay'
    },
    {
        _id: 2,
        title: 'Almost Not nice',
        authorName: 'raj'
    }
])

db.book2.insertMany([{
    _id: 1,
    title: 'MYSQL',
    cost: 5354
}])

db.order.insertMany([{
        _id: 1,
        orderDay: 'Monday',
        customerName: 'Orton'
    },
    {
        _id: 2,
        orderDay: 'Sunday',
        customerName: 'Kane'
    },
    {
        _id: 3,
        orderDay: 'Wednesday',
        customerName: 'Undertaker'
    }

])
db.orderDetails.insertMany([{
        _oid: 1,
        productName: 'Chicken',
        qty: '10 kg',
        rate: 2000
    },
    {
        _oid: 1,
        productName: 'Eggs',
        qty: '10 dozen',
        rate: 600
    },
    {
        _oid: 1,
        productName: 'Meat',
        qty: '10 kg',
        rate: 7000
    },
    {
        _oid: 2,
        productName: 'Veg biryani',
        qty: '2 kg',
        rate: 400
    },
    {
        _oid: 2,
        productName: 'Kofta',
        qty: '10 kg',
        rate: 600
    },
    {
        _oid: 3,
        productName: 'Cold coffee',
        qty: 3,
        rate: 150
    }


])
db.order.aggregate([{

        $match: {
            _id: 1
        }
    },
    {
        $lookup: {
            from: 'orderDetails',
            localField: '_id',
            foreignField: '_oid',
            as: "Order details"
        }
    }


])
function f1(x) {
    return db.order.aggregate([{
            $match: {
                _id: x
            }
        },
        {
            $lookup: {
                from: 'orderDetails',
                localField: '_id',
                foreignField: '_oid',
                as: "Order details"
            }
        }


    ])
}
*/
uifhsfhs