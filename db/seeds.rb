puts 'Creating countries...'
country = Country.create!(name: Faker::Address.country)

puts 'Creating cities...'
10.times do
  city = City.create!(name: Faker::Address.city, country: country)
  4.times do 
    Question.create!(body: Faker::Lorem.sentence, city: city)
  end
end
