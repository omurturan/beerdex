# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ruby encoding: utf-8
require 'faker'

Beer.delete_all
User.delete_all

numberOfBeers = 1000
numberOfUsers = 100

puts "Starting with #{Beer.count} beers."
for i in 1..numberOfBeers do
    Beer.create(
        "name" => Faker::Beer.name,
        "style" => Faker::Beer.style,
        "hop" => Faker::Beer.hop,
        "yeast" => Faker::Beer.yeast,
        "malts" => Faker::Beer.malts,
        "ibu" => Faker::Beer.ibu,
        "alcohol" => Faker::Beer.alcohol,
        "blg" => Faker::Beer.blg
    )
end
puts "Now we have #{Beer.count} beers! 🍺"

puts "Starting with #{User.count} users."
for i in 1..numberOfUsers do
    User.create(
        "name" => Faker::Name.name,
        "birthday" =>Faker::Date.birthday(18, 65),
        "address" =>Faker::Address.full_address,
        "gender" => Faker::Gender.type,
        "phone" => Faker::PhoneNumber.cell_phone,
        "email" =>Faker::Internet.email
    )
end
puts "Now we have #{User.count} users! 🤓"
