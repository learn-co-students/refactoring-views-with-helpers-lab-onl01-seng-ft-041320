# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do
    Artist.create(name: Faker::FunnyName.name)
end

#words to make song title either 100x more hilarious or at least slightly less nonsensical
words = ["my", "your", "the", "a", "some"]

500.times do
    Song.create(title: "#{Faker::Hacker.ingverb} #{words.shuffle.first} #{Faker::Hacker.noun}".titlecase, artist: Artist.all.shuffle.first)
end