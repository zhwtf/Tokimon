# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Trainer.create!(name:  "Frank", age: 20, height: 180, weight: 170, level: 0, address: "pandora dr",
             #email: "zhwtf999@gmail.com")

5.times do |n|
  name  = Faker::Name.first_name 
  email = "example-#{n+1}@gmail.com"
  age = Faker::Number.between(10, 50)
  height = Faker::Number.between(160, 200)
  weight = Faker::Number.between(100, 200)
  address = Faker::Address.street_address


  Trainer.create!(name:  name,
               email: email,
               age: age,
               height: height,
               weight: weight,
               level: 0,
               address: address)
               
end

trainers = Trainer.all
2.times do
  
  trainers.each { |trainer| 
  	name  = Faker::Name.first_name
  weight = Faker::Number.between(10, 100)
  height = Faker::Number.between(1, 200)
  fly = Faker::Number.between(0, 100)
  fight = Faker::Number.between(0, 100)
  fire = Faker::Number.between(0, 100)
  water = Faker::Number.between(0, 100)
  electric = Faker::Number.between(0, 100)
  frozon = Faker::Number.between(0, 100)
  total = fly + fight + fire + water + electric + frozon
  	trainer.tokimons.create!(name: name, height: height,
               weight: weight, fly: fly, fight: fight, fire: fire, water: water, electric: electric, frozon: frozon, total: total
  	) }
end

