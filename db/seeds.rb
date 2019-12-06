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




# LOCATION
parque_nacional_el_chico  = Location.create(name: "Parque Nacional El Chico", experience_level: 5, description: "This beautiful national park is located two hours from Mexico City, in the state of Hidalgo. It’s cold all year long in Parque Nacional El Chico, so don’t forget to bring some warm layers, as well as a good tent and sleeping bag. The park has over 2,000 hectares where you can find four camping areas with kitchens and hot showers. The highlight of El Chico is its crags, ideal for rappelling, rock climbing, and mountaineering.")
las_estacas               = Location.create(name: "Las Estacas", experience_level: 3, description: "Las Estacas is one of the most beautiful natural parks near the city. It has a natural river with a delicate current that allows you to swim or raft safely. The site also has several pools, restaurants, toilets, showers, security lockers, a temazcal (prehispanic steam bath), a spa, and activities such as zip-lining, kayaking, fishing, snorkeling, and diving. Bring your tent, food, and beverages. Las Estacas is located in Morelos, around two hours from Mexico City. Avoid visiting in summer, as it gets pretty crowded and rains at night.")
campamento_xopilco        = Location.create(name: "Campamento Xopilco", experience_level: 4, description: "Its located nearby the Tepoztlán — less than two hours from Mexico City. The camping site is surrounded by mountains, so you can hike and enjoy beautiful starry nights away from the light pollution of CDMX. Campamento XopilcoIts proximity to Tepoztlán makes it ideal to wander around the town by day — check out the Tepozteco pyramid and the herbal medicine clinic to learn more about the area’s history and traditions. Xopilco has tents for rent, food, and is equipped with toilets, hammocks, and water to take baths in designated area with some privacy. The area gets very chilly at night, so we recommend visiting during the hot months (April and May); avoid summer vacations as it rains during this season.")
san_nicolas_totolapan     = Location.create(name: "San Nicolas Totolapan", experience_level: 7, description: "This place is a 1,900-hectare communal park located within the city limits, close to Ajusco Volcano. It is a local favorite for mountain biking, hiking, and fishing. It also has a zip line and climbing walls. For camping, you need to bring your tent and supplies, but you don’t have to worry about food, as it has a restaurant that serves regional dishes. Once again, this area gets cold, so pack some blankets and warm clothes.")
malikualli                = Location.create(name: "Malikualli", experience_level: 7, description: "Just five minutes away from the cool little town of Malinalco and only two and a half hours away from Mexico City, Malikualli is an ecotourism complex. It has a nice camping area (with tents and sleeping bags rentals), a secure zone for bonfires, and a pool. There’s also a 200-meter zip line, as well as the possibility to rappel, rock climb, and paraglide. From March to May you’ll find hot weather; from June to October is the rainy season; from November to February it can get cold, but a good jacket will do the trick. Malikualli is a great option if you’re traveling with kids.")

# ITEMS

# General items
sleeping_bag             = Item.create(name: "Sleeping Bag", description: "A bag in which to sleep")
tent                     = Item.create(name: "Tent", description: "A place in which to lay your sleeping bag")
backpack                 = Item.create(name: "Backpack", description: "A thing to help you carry your stuff")
flashlight               = Item.create(name: "Flashlight", description: "Illumination")


#*****************  Location-specific items ***************

# Parque Nacional El Chico-specific Items

warm_clothes             = Item.create(name: "Warm Clothes", description: "You’ll need some warm stuff to wear.")
rock_climbing_gear       = Item.create(name: 'Rock Climbing Gear', description: "This place has lots of opportunities for climbing rocks and mountaineering.")
# Parque_Nacional_El_Chico  LOCATION_ITEMs

parque_nacional_el_chico_warm_clothes = LocationItem.create(item_id: warm_clothes.id, location_id: parque_nacional_el_chico.id)
parque_nacional_el_chico_rock_climbing_gear = LocationItem.create(item_id: rock_climbing_gear.id, location_id: parque_nacional_el_chico.id)


# Las Estacas-specific items
swimsuit = Item.create(name: "Swimsuit", description: "From the rivers to the spa, you’ll want a swimsuit to soak in the waters.")
raincoat = Item.create(name: "Raincoat", description: "Summer months bring rain. Be prepared.")

# Las Estacas LOCATION_ITEMS

las_estacas_swimsuit = LocationItem.create(item_id: swimsuit.id, location_id: las_estacas.id)
las_estacas_raincoat = LocationItem.create(item_id: raincoat.id, location_id: las_estacas.id)

# Campamento Xopilco-specific items

hiking_boots         = Item.create(name: "Hiking Boots", description: 'You’ll want some hiking boots so you can enjoy this area’s gorgeous hiking paths.')
umbrella             = Item.create(name: "Umbrella", description: 'As with other spots, the summer months bring rain. You’ll want an umbrella while checking out the town.')
# Campamento Xopilco LOCATION_ITEMS

campamento_xopilco_hiking_boots = LocationItem.create(item_id: hiking_boots.id, location_id: campamento_xopilco.id)
campamento_xopilco_umbrella = LocationItem.create(item_id: umbrella.id, location_id: campamento_xopilco.id)

# San Nicolas Totolapan-specific items

camping_supplies = Item.create(name: 'Camping Supplies', description: 'This campsite does not offer any camping gear rentals, so you’ll need to plan to bring your own.')
extra_blankets = Item.create(name: 'Extra Blankets', description: 'You’ll need to bundle up at night, so bring a few extra blankets to stay warm.')
# San Nicolas Totolapan LOCATION_ITEMS

san_nicolas_totolapan_camping_supplies = LocationItem.create(item_id: camping_supplies.id, location_id: san_nicolas_totolapan.id)
san_nicolas_totolapan_extra_blankets   = LocationItem.create(item_id: extra_blankets.id, location_id: san_nicolas_totolapan.id)

# Malikualli-specific items

lightweight_jacket = Item.create(name: 'Lightweight Jacket', description: 'This area can get cool, so have a light jacket with you.')

# Malikualli LOCATION_ITEMS

malikualli_lightweight_jacket = LocationItem.create(item_id: lightweight_jacket.id, location_id: malikualli.id)