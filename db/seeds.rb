# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# USER
sebastian = User.create(name: "Sebastian")
emily = User.create(name: "Emily")
chine = User.create(name: "Chine")

# LOCATION
hawaii = Location.create(name: "Hawaii", experience_level: 2)
rocky_mountains = Location.create(name: "Rocky Mountains", experience_level: 10)
smokey_mountains = Location.create(name: "Smokey Mountains", experience_level: 9)

