# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Location.destroy_all
Item.destroy_all
LocationItem.destroy_all
UserItem.destroy_all

# USER
sebastian = User.create(name: "Sebastian")
emily = User.create(name: "Emily")
chine = User.create(name: "Chine")

# LOCATION
hawaii = Location.create(name: "Hawaii", experience_level: 2, description:"Hawaii is the world's largest island chain, and it's the only U.S. state completely made up of islands. But only 7 of its 132 islands are inhabited: Hawaii (also known as the Big Island), Maui, Molokai, Lanai, Oahu, Kauai, and Niihau. The Hawaiian Islands are volcanic islands.")
rocky_mountains = Location.create(name: "Rocky Mountains", experience_level: 10, description:"The Rocky Mountains, also known as the Rockies, are a major mountain range located in western North America. The Rocky Mountains stretch 3,000 km (1,900 mi) in straight-line distance from the northernmost part of British Columbia, in western Canada, to New Mexico in the Southwestern United States.")
smokey_mountains = Location.create(name: "Smokey Mountains", experience_level: 9, description:"The Great Smoky Mountains are a mountain range rising along the Tennessee–North Carolina border in the southeastern United States. They are a subrange of the Appalachian Mountains, and form part of the Blue Ridge Physiographic Province. The range is sometimes called the Smoky Mountains and the name is commonly shortened to the Smokies. The Great Smokies are best known as the home of the Great Smoky Mountains National Park, which protects most of the range. The park was established in 1934, and, with over 11 million visits per year, it is the most visited national park in the United States.")


# ITEMS

# General items
sleeping_bag = Item.create(name: "Sleeping Bag", description: "A bag in which to sleep")
tent = Item.create(name: "Tent", description: "A place in which to lay your sleeping bag")
backpack = Item.create(name: "Backpack", description: "A thing to help you carry your stuff")
flashlight = Item.create(name: "Flashlight", description: "Illumination")

# Hawaii-specific
machette = Item.create(name: "Machette", description: "Hawaii has vegetation. You'll need something to chop that vegetation.")
swimsuit = Item.create(name: "Swimsuit", description: "You don't want to get arrested trying to swim without one.")
sunblock = Item.create(name: "Sunblock", description: "Nobody likes a sunburn.")
bug_spray = Item.create(name: "Bug Spray", description: "To keep the bugs away.")
snorkling_gear = Item.create(name: "Snorkling Gear", description: "So you can check out the marine life.")

# Location_Items
hawaii_machette = LocationItem.create(item_id: machette.id, location_id: hawaii.id)
hawaii_swimsuit = LocationItem.create(item_id: swimsuit.id, location_id: hawaii.id)
hawaii_sunblock = LocationItem.create(item_id: sunblock.id, location_id: hawaii.id)
hawaii_bug_spray = LocationItem.create(item_id: bug_spray.id, location_id: hawaii.id)
hawaii_snorkling_gear = LocationItem.create(item_id: snorkling_gear.id, location_id: hawaii.id)

#  USER_ITEMs
sebastian_machette = UserItem.create(user_id: sebastian.id, item_id: machette.id)