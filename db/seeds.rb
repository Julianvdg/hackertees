# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all

User.delete_all

products = [
  { name: "Awesome T-shirt", description: "One helluva Tee", price: 10, product_image: "/assets/shirts/tshirt_1.png", in_stock: true, stock: 5},
  { name: "Cool T-shirt", description: "This is a great T-shirt", price: 12, product_image: "/assets/shirts/tshirt_2.png", in_stock: true, stock: 5},
  { name: "TeeTee", description: "A very nice T-shirt", price: 14, product_image: "/assets/shirts/tshirt_3.png", in_stock: true, stock: 5},
  { name: "TwoTeeee", description: "This is a great T-shirt", price: 12, product_image: "/assets/shirts/tshirt_4.png", in_stock: true, stock: 5},
  { name: "Banger Tee", description: "This is a great T-shirt", price: 12, product_image: "/assets/shirts/tshirt_5.png", in_stock: true, stock: 5},
  { name: "Cashic Tee", description: "This is a great T-shirt", price: 12, product_image: "/assets/shirts/tshirt_6.png", in_stock: true, stock: 5},
  { name: "T-shirt One", description: "This is a great T-shirt", price: 12, product_image: "/assets/shirts/tshirt_7.png", in_stock: true, stock: 5},
  { name: "Like Shirt", description: "This is a great T-shirt", price: 12, product_image: "/assets/shirts/tshirt_8.png", in_stock: true, stock: 5},
  { name: "Boom Shirt", description: "This is a great T-shirt", price: 12, product_image: "/assets/shirts/tshirt_9.png", in_stock: true, stock: 5},
  { name: "T Twice", description: "This is a great T-shirt", price: 12, product_image: "/assets/shirts/tshirt_10.png", in_stock: true, stock: 5}
]

products.each do |product|
  Product.create product
end

users = [
  {email: 'timmo@test.com', password: 'abcd1234'},
  {email: 'christiaan@test.com', password: 'abcd1234'},
  {email: 'rein@test.com', password: 'abcd1234', admin: true},
  {email: 'julian@test.com', password: 'abcd1234'}
]

users.each do |user|
  User.create user
end
