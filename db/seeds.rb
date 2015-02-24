# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

miami =	City.create(name: "Miami", image: "miami1.jpg", description: "Very cool, warm beach town with a great startup culture blahaboalh", bootcamps: "Ironhack")


miami.neighborhoods.create(name: "Brickell", description: "Dat miami neighborhood")
miami.neighborhoods.create(name: "Coconut Grove", description: "Dat miami neighborhood")
miami.neighborhoods.create(name: "Design District", description: "Dat miami neighborhood")
miami.neighborhoods.create(name: "Wynwood", description: "Dat miami neighborhood")


