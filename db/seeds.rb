# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Delete all restaurants"
Restaurant.destroy_all

puts "Create 5 seeds"
name = ["McDo", "BK", "Holy Cow", "Pointu", "Meraki", "Great Escape", "Giraf brunch"]
address = ["rue loulou", "avenue 14 avril 18", "boulevard des copains", "avenue marc dufour", "avenue de france"]

5.times do 
  my_restaurant = Restaurant.new(name: name.sample, address: address.sample, category: Restaurant::CATEGORIES.sample)
  my_restaurant.save
end

puts "Seeding done"