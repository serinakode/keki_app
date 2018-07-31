# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
    {
    email: 'example@example.com',
    password: 'greeneggs'
    },
    {
    email: '123@123.com',
    password: '123456'    
    }
]


User.create!(users) {|u| p u.email }

User.all.each do |user|
    user.profile.address = "120 Spencer st" if user.id == 1
    user.profile.address = "318 Russell st" if user.id == 2
    user.profile.postcode = "3000"
    user.profile.city = "Melbourne"
    user.profile.state = "Victoria"
    user.profile.geocode
    user.profile.save!
end

products = [
    {
        product_name: "Flower Mystery",
        description: "Cream • Fruit • Chocolate • Cheese • Chip",
        price: 180,
        quantity_available: 1,
        user: User.first,
        address: "120 spencer street, Melbourne"
    },
    {
        product_name: "Little Princess",
        description: "Chocolate • Honey • Cream • Cheese • Candy",
        price: 100,
        quantity_available: 1,
        user: User.first,
        address: '120 spencer street, Melbourne'
    },
    {
        product_name: "57 & Naked",
        description: "Mousse • Flower • Candy • Cream chease • Icing",
        price: 140,
        quantity_available: 1,
        user: User.first,
        address: '120 spencer street, Melbourne'
    }
]

Product.create!(products) {|c| p c.product_name}