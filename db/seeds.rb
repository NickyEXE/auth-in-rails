# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


7.times do
  Character.find_or_create_by(name: Faker::TvShows::Community.characters, originating_work: "Community")
end

7.times do
  Character.find_or_create_by(name: Faker::TvShows::GameOfThrones.character, originating_work: "Game of Thrones")
end

7.times do
  Character.find_or_create_by(name: Faker::TvShows::Seinfeld.character, originating_work: "Seinfeld")
end

7.times do
  Character.find_or_create_by(name: Faker::TvShows::StrangerThings.character, originating_work: "Stranger Things")
end
