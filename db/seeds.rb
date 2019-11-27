# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(name:"Ben Alvo", email:"test@test.test", password:"123456")

service = Service.create!(name:"service", description: "desc", price:"9999999", user:user)
Booking.create!(user: user, service: service)

review = Review.create!(title:"Great Job", content: "This was a great service", rating:"5", user: User.last, service: Service.last)
Booking.create!(user: user, service: service)


review2 = Review.create!(title:"I dont agree with the user above", content: "This was a ripoff!", rating:"2", user: User.last, service: Service.last)
Booking.create!(user: user, service: service)
