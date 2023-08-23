# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

restaurant1 = Restaurant.create!(name: 'Restaurant 1', address: 'Address 1', phone_number: '156-789-0123', category: 'french', rating: 2)
restaurant2 = Restaurant.create!(name: 'Restaurant 2', address: 'Address 2', phone_number: '256-789-0123', category: 'chinese', rating: 3)
restaurant3 = Restaurant.create!(name: 'Restaurant 3', address: 'Address 3', phone_number: '356-789-0123', category: 'italian', rating: 2)
restaurant4 = Restaurant.create!(name: 'Restaurant 4', address: 'Address 4', phone_number: '456-789-0123', category: 'japanese', rating: 5)
restaurant5 = Restaurant.create!(name: 'Restaurant 5', address: 'Address 5', phone_number: '556-789-0123', category: 'belgian', rating: 5)
