rest1 = Restaurant.create(name: Faker::Company.name, city: city1)
rest2= Restaurant.create(name: Faker::Company.name, city: city2)

rev1 = Review.create(restaurant: rest1, rating: rand(1..5), content: Faker::Lorem.paragraph)
rev2 = Review.create(restaurant: rest2, rating: rand(1..5), content: Faker::Lorem.paragraph)

city1= City.create(name: Faker::Address.city, state: Faker::Address.state)
city2= City.create(name: Faker::Address.city, state: Faker::Address.state)
