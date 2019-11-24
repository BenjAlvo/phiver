# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# user = User.create(name:"test", email:"test@test.test", password:"123456")
# service = Service.create(name:"service", description: "desc", price:"9999999", user:user)
# Booking.create(user: user, service: service)

services = Service.create([

{name: "Babysitting",
description: "taking care of your children",
price: 15$},

{name: "Walk your dog",
description: "walking your dog in the park",
price: 10$},

{name: "Tutoring Math",
description: "Tuturoing your childrens Math exercises",
price: 15$},

{name: "Window cleaning",
description: "cleaning all your windows",
price: 20$},

{name: "Webpage development",
description: "developing your personal webpage",
price: 30$},
])

