# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#cities
miami =	City.create(name: "Miami", description: "Very cool, warm beach town with a great startup culture blahaboalh")
pittsburgh = City.create(name: "Pittsburgh", description: "Cold, angry town in PA")
#city images
miami.cityimgs.create(url: "/assets/miami1.jpg")
pittsburgh.cityimgs.create(url: "/assets/pittsburgh.jpg")
#neighborhoods
brickell = miami.neighborhoods.create(name: "Brickell", description: "Dat miami neighborhood")
coconutGrove = miami.neighborhoods.create(name: "Coconut Grove", description: "Dat miami neighborhood")
designDistrict = miami.neighborhoods.create(name: "Design District", description: "Dat miami neighborhood")
wynwood = miami.neighborhoods.create(name: "Wynwood", description: "Dat miami neighborhood")
#neighborhood images
brickell.neighborhoodimgs.create(url: "/assets/brickell.jpg")
coconutGrove.neighborhoodimgs.create(url: "/assets/coconut.jpg")
designDistrict.neighborhoodimgs.create(url: "/assets/designDistrict.jpg")
wynwood.neighborhoodimgs.create(url: "/assets/wynwood.jpg")	
#bootcamps
ironhack = Bootcamp.create(name: "Ironhack", description: "Sweet Miami bootcamp for bros")
miami.bootcamps.push(ironhack)
#bootcampimgs
ironhack.bootcampimgs.create(url: 'assets/cage.jpg')