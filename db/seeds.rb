# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

eli = User.create(username: 'Eli', password: 'lardboy')

Map.create!(user: eli, name: 'test1', latitude: 49.4, longitude: 120, zoom: 4, tile_url: 'ddd' )
Map.create!(user: eli, name: 'test2', latitude: 19.4, longitude: 100, zoom: 4, tile_url: 'ddd' )
Map.create!(user: eli, name: 'test3', latitude: 59.4, longitude: 90, zoom: 4, tile_url: 'ddd' )
Map.create!(user: eli, name: 'test4', latitude: 12.4, longitude: 12, zoom: 4, tile_url: 'ddd' )

puts "db seeded"