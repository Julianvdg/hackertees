# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
products = [
  { name: "Tee 1", description: "One helluva Tee", price: 10, product_image: "http://cdn.shopify.com/s/files/1/0165/4322/products/Hacker_T_shirt_front_large_6954c819-4a9e-4f13-bed6-dfd114c6b311_large.jpg?v=1452625670", in_stock: true},
  { name: "Tee 2", description: "This is a great T-shirt", price: 12, product_image: "http://cdn.shopify.com/s/files/1/0165/4322/products/Hacker_T_shirt_front_large_6954c819-4a9e-4f13-bed6-dfd114c6b311_large.jpg?v=1452625670", in_stock: true},
  { name: "Tee 3", description: "A very nice T-shirt", price: 14, product_image: "http://cdn.shopify.com/s/files/1/0165/4322/products/Hacker_T_shirt_front_large_6954c819-4a9e-4f13-bed6-dfd114c6b311_large.jpg?v=1452625670", in_stock: true}
]

products.each do |product|
  Product.create product
end
