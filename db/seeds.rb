# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Service.destroy_all
puts "Removed the servicess from the list"

hash =  ["services" => {
{name: "Babysitting",
description: "Taking care of your children",
price: 15$},
{name: "Walk your dog",
description: "Walking your dog in the park",
price: 10$},
{name: "Tutoring Math",
description: "Tutoring your child's Math exercises",
price: 15$},
{name: "Window cleaning",
description: "cleaning all your windows",
price: 20$},
{name: "Webpage development",
description: "developing your personal webpage",
price: 30$},
}]


array = hash['services']
array.each do |minihash|
  name = minihash[:name]
  description = minihash[:description]
  price = minihash[:price]
  service.create(name:name, description: description, price: price)
  puts "Added the #{service} service"
end

# user = User.create!(name:"test", email:"test@test.test", password:"123456")
# service = Service.create!(name:"service", description: "desc", price:"9999999", user:user)
# Booking.create!(user: user, service: service)









