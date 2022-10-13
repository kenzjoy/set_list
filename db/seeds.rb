# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@spice_girls = Artist.create!(name: 'Spice Girls')
@life = @spice_girls.songs.create!(title: 'Spice Up Your Life', length: 456, play_count: 7895632)
@wannabe = @spice_girls.songs.create!(title: 'Wannabe', length: 237, play_count: 9865234)

