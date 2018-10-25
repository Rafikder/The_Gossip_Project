require 'faker'

10.times do 
	users = User.create!(first_name: Faker::Superhero.name, last_name: Faker::Pokemon.name, description: Faker::ChuckNorris.fact, email: Faker::Internet.email, age: Faker::Number.between(18, 40))
end

10.times do 
	cities = City.create!(city_name: Faker::HarryPotter.character, postal_code: Faker::Address.postcode)
end

User.all.each do |user|
user.update(city_id: rand(1..10))
end

20.times do 
	gossips = Gossip.create!(title: Faker::TheFreshPrinceOfBelAir.character, content: Faker::TheFreshPrinceOfBelAir.quote, date: Faker::Date.forward(23))
end

Gossip.all.each do |g|
g.update(user_id: rand(1..10))
end

10.times do 
	tags = Tag.create!(title: Faker::Movie.quote)
end

Tag.all.each do |t|
t.update(gossip_id: rand(1..20), user_id: rand(1..10))
end

2.times do 
	mp = PrivateMessage.create(sender_id: rand(1..10), recipient_id: rand(1..10), content: Faker::GameOfThrones.quote, date: Faker::Date.forward(23))
end