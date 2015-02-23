# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do 
	City.create(name: "Miami", image: "miami1.jpg", description: "Very cool, warm beach town with a great startup culture blahaboalh", bootcamps: "Ironhack")
end
