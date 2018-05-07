# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
    {
    email: 'example1@example.com',
    password: 'greeneggs'
    },
    {
    email: 'example2@example.com',
    password: 'greeneggs'    
    }
]


User.create!(users) {|u| p u.email }

User.all.each do |user|
    user.profile.street_address = "120 Spencer st" if user.id == 1
    user.profile.street_address = "318 Russell st" if user.id == 2
    user.profile.town_suburb = "Melbourne"
    user.profile.city = "Melbourne"
    user.profile.state = "Victoria"
end

products = [
    {
        product_name: "little princess",
        description: "yummy cake",
        price: 4000,
        user: User.first
    },
    {
        product_name: "chocolate cake",
        description: "yummy cake",
        price: 4000,
        user: User.first
    },
    {
        product_name: "new york cheese cake",
        description: "yummy cake",
        price: 4000,
        user: User.first
    },
    {
        product_name: "black forest",
        description: "yummy cake",
        price: 4000,
        user: User.first
    }
]

Product.create!(products) {|c| p c.product_name}