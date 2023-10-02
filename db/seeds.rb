# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

# Create 20 restaurants
20.times do |i|
  Restaurant.create(name: "Restaurant #{i + 1}", address: "Address #{i + 1}")
end


# db/seeds.rb

# ... (your existing seed data)

# Create some sample foods
restaurant = Restaurant.first

10.times do |i|
  restaurant.foods.create(name: "Food #{i + 1}", description: "Description for Food #{i + 1}", price: rand(5.0..20.0))
end
