# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Clean database"
Flat.destroy_all
puts "Creating flats"

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
puts "Flat London created"

Flat.create!(
  name: 'Light & Spacious Garden Flat Paris',
  address: '10 rue de la Tour Eiffel',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 100,
  number_of_guests: 2
)
puts "Flat Paris created"

Flat.create!(
  name: 'Light & Spacious Garden Flat Marseille',
  address: '8 rue Edouard de Langlade',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 150,
  number_of_guests: 4
)
puts "Flat Marseille created"

Flat.create!(
  name: 'Light & Spacious House Pennes Mirabeau',
  address: 'chemin de la renardière',
  description: 'A lovely summer house with a swimming pool and a large garden and a beautiful saloon',
  price_per_night: 200,
  number_of_guests: 6
)
puts "House Pennes Mirabeau created"
