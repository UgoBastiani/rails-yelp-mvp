# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'cleaning db'
Restaurant.destroy_all

puts 'here is 5 new retaurants'

mcdo = { name: 'Mcdo', address: 'Bruxelles', phone_number: '06 55 77 94 73',category: 'belgian' }
big_mamma = { name: 'Big Mamma', address: 'Paris', phone_number: '06 94 78 24 34',category: 'italian' }
table_ronde = { name: 'Table Ronde', address: 'Lyon', phone_number: '06 71 48 71 03',category: 'french' }
o_sushi = { name: 'Ô Sushi', address: 'Genêve', phone_number: '06 17 22 41 85',category: 'japanese' }
soleil_levant = { name: 'Soleil Levant', address: 'Paris', phone_number: '06 41 82 21 21',category: 'chinese' }

[mcdo, big_mamma, table_ronde, o_sushi, soleil_levant].each do |attribute|
  restaurant = Restaurant.create!(attribute)
  puts "#{restaurant} created"
end
puts 'created !'
