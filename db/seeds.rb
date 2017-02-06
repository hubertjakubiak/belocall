puts 'Creating countries...'
country = Country.create!(name: Faker::Address.country)

puts 'Creating cities...'
city = City.create!(name: Faker::Address.city, country: country)

puts 'Creating questions...'
10.times do 
  Question.create!(body: Faker::Lorem.sentence, city: city)
end
