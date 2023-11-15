# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)

#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
macdonald = {name: "MacDonalds", address: "10 rue du gras", phone_number: "01.02.03.04.05", category: "belgian" }
quick = {name: "Quick", address: "10 rue de l'huile", phone_number: "01.02.03.04.05", category: "belgian" }
pizza_hut = {name: "Pizza Hut", address: "15 rue de la gerbe", phone_number: "01.02.03.04.05", category: "italian" }
subway = {name: "Subway", address: "10 rue du pain", phone_number: "01.02.03.04.05", category: "chinese" }
sushi_shop = {name: "Sushi shop", address: "10 rue du poisson", phone_number: "01.02.03.04.05", category: "japanese" }

[macdonald, quick, pizza_hut, subway, sushi_shop].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
