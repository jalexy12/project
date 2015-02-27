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
chicago = City.create(name: "Chicago", description: "Da bears")
seattle = City.create(name: "Seattle", description: "Oh look a hipster")
newyork = City.create(name: "New York", description: "Hey look its Nas")
stlouis = City.create(name: "St. Louis", description: "Nelly lives here...?")
sandiego = City.create(name: "San Diego", description: "75 and sunny all day erry day")
vancouver = City.create(name: "Vancouver", description: "Vancouver eh?")
sanfran = City.create(name: "San diego", description: "Full house?")
#city images
miami.cityimgs.create(url: "miami1.jpg")
pittsburgh.cityimgs.create(url: "pittsburgh.jpg")
pittsburgh.cityimgs.create(url: "pittsburgh2.jpg")
chicago.cityimgs.create(url: "chicago.jpg")
chicago.cityimgs.create(url: "chicago2.jpg")
chicago.cityimgs.create(url: "chicago3.jpg")
newyork.cityimgs.create(url: "ny.jpg")
newyork.cityimgs.create(url: "ny2.jpg")
newyork.cityimgs.create(url: "ny3.jpg")
sandiego.cityimgs.create(url: "sd.jpg")
sandiego.cityimgs.create(url: "sd2.jpg")
sandiego.cityimgs.create(url: "sd3.jpg")
seattle.cityimgs.create(url: "seattle.jpg")
seattle.cityimgs.create(url: "seattle2.jpg")
seattle.cityimgs.create(url: "seattle3.jpg")
sanfran.cityimgs.create(url: "sanfran2.jpg")
sanfran.cityimgs.create(url: "sanfran3.jpg")
stlouis.cityimgs.create(url: "stlouis.jpg")
stlouis.cityimgs.create(url: "stlous2.jpg")
vancouver.cityimgs.create(url: "vancouver.jpg")
vancouver.cityimgs.create(url: "vancouver2.jpg")
vancouver.cityimgs.create(url: "vancouver3.jpg")
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
appAcademy = Bootcamp.create(name: "App Academy", description: "Description goes here")
wyncode = Bootcamp.create(name: "Wyncode", description: "Hipsters can code too")
byteAcademy = Bootcamp.create(name: "Byte Academy", description: "Description goes here")
codeFellows = Bootcamp.create(name: "Code Fellows", description: "Description goes here")
codeCore = Bootcamp.create(name: "Code Core", description: "Description goes here")
codeDojo = Bootcamp.create(name: "Code Dojo", description: "Description goes here")
devBootcamp = Bootcamp.create(name: "Dev Bootcamp", description: "Description goes here")
lightHouseLabs = Bootcamp.create(name: "Light House Labs", description: "Description goes here")
claimAcademy = Bootcamp.create(name: "Claim academy", description: "Description goes here")
hackReactor = Bootcamp.create(name: "Hack Reactor", description: "Description goes here")
#bootcamp logos
# ironhackLogo = 
# appAcademyLogo = 
# wyncodeLogo = 
# byteAcademyLogo = 
# codeFellowsLogo = 
# codeCoreLogo = 
# codeDojoLogo = 
# devBootcampLogo = 
# ironhackLogo = 
ironhack.bootcampimgs.create(url: "ironhacklogo.png")
appAcademy.bootcampimgs.create(url: "appAcademyLogo.png")
wyncode.bootcampimgs.create(url: "wyncodelogo.jpeg")
byteAcademy.bootcampimgs.create(url: "byteacademylogo.png")
codeFellows.bootcampimgs.create(url: "codefellowslogo.png")
codeCore.bootcampimgs.create(url: "codecorelogo.png")
codeDojo.bootcampimgs.create(url: "codingdojologo.png")
devBootcamp.bootcampimgs.create(url: "dbclogo.png")
lightHouseLabs.bootcampimgs.create(url: "lighthouselabslogo.jpg")
claimAcademy.bootcampimgs.create(url: "claimacademylogo.png")
hackReactor.bootcampimgs.create(url: "hackreactorlogo.jpg")
#bootcamp city attachment
miami.bootcamps.push(ironhack)
miami.bootcamps.push(wyncode)
sanfran.bootcamps.push(hackReactor)
sanfran.bootcamps.push(appAcademy)
newyork.bootcamps.push(appAcademy)
newyork.bootcamps.push(byteAcademy)
seattle.bootcamps.push(codeFellows)
sanfran.bootcamps.push(codeDojo)
newyork.bootcamps.push(codeFellows)
chicago.bootcamps.push(codeDojo)
sanfran.bootcamps.push(codeDojo)
vancouver.bootcamps.push(codeCore)
vancouver.bootcamps.push(lightHouseLabs)
#bootcampimgs
ironhack.bootcampimgs.create(url: 'assets/cage.jpg')