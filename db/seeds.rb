# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#cities
miami =	City.create(name: "Miami", description: "Very cool, warm beach town with a great startup culture blahaboalh",)
pittsburgh = City.create(name: "Pittsburgh", description: "Cold, angry town in PA")
chicago = City.create(name: "Chicago", description: "Da bears")
seattle = City.create(name: "Seattle", description: "Oh look a hipster")
newyork = City.create(name: "New York", description: "Hey look its Nas")
stlouis = City.create(name: "St. Louis", description: "Nelly lives here...?")
sandiego = City.create(name: "San Diego", description: "75 and sunny all day erry day")
vancouver = City.create(name: "Vancouver", description: "Vancouver eh?")
sanfran = City.create(name: "San Franciso", description: "Full house?")
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
ironhack = Bootcamp.create(name: "Ironhack", description: "Sweet Miami bootcamp for bros", url: "http://ironhack.com/en/http://ironhack.com/en/", approved: true )
appAcademy = Bootcamp.create(name: "App Academy", description: "Description goes here", url:"http://www.appacademy.io/", approved: true )
wyncode = Bootcamp.create(name: "Wyncode", description: "Hipsters can code too", url: "http://wyncode.co/", approved: true)
byteAcademy = Bootcamp.create(name: "Byte Academy", description: "Description goes here", url: "http://www.byteacademy.co/", approved: true)
codeFellows = Bootcamp.create(name: "Code Fellows", description: "Description goes here", url: "https://www.codefellows.org/", approved: true)
codeCore = Bootcamp.create(name: "Code Core", description: "Description goes here", url:"http://codecore.ca/", approved: true )
codeDojo = Bootcamp.create(name: "Code Dojo", description: "Description goes here", url: "http://www.codingdojo.com/", approved: true)
devBootcamp = Bootcamp.create(name: "Dev Bootcamp", description: "Description goes here", url: "http://devbootcamp.com/", approved: true)
lightHouseLabs = Bootcamp.create(name: "Light House Labs", description: "Description goes here", url: "https://www.lighthouselabs.ca/", approved: true)
claimAcademy = Bootcamp.create(name: "Claim academy", description: "Description goes here", url: "http://claimacademystl.com/", approved: true)
hackReactor = Bootcamp.create(name: "Hack Reactor", description: "Description goes here", url: "http://www.hackreactor.com/", approved: true )
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
sanfran.bootcamps.push(devBootcamp)
chicago.bootcamps.push(devBootcamp)
newyork.bootcamps.push(devBootcamp)
chicago.bootcamps.push(codeFellows)
seattle.bootcamps.push(codeDojo)
vancouver.bootcamps.push(codeCore)
vancouver.bootcamps.push(lightHouseLabs)
#bootcamp coords
ironhack.bootcampcoords.create(city_id: 1, lat: 25.763181, lon: -80.19101899999998)
wyncode.bootcampcoords.create(city_id: 1, lat: 25.801147, lon: -80.202384)
hackReactor.bootcampcoords.create(city_id: 9, lat: 37.783724, lon: -122.40897799999999)
appAcademy.bootcampcoords.create(city_id: 9, lat: 37.789677, lon: -122.39168000000001)
appAcademy.bootcampcoords.create(city_id: 5, lat: 40.728275, lon: -73.991534)
byteAcademy.bootcampcoords.create(city_id: 5, lat: 40.751758, lon: -73.979465)
codeFellows.bootcampcoords.create(city_id: 4, lat: 47.6220217, lon: -122.3358359)
codeDojo.bootcampcoords.create(city_id: 9, lat: 37.3768099, lon:-121.91249240000002)
codeDojo.bootcampcoords.create(city_id: 4, lat: 47.609809, lon: -122.19650309999997)
devBootcamp.bootcampcoords.create(city_id: 9, lat: 37.7846334, lon: -122.39741370000002)
devBootcamp.bootcampcoords.create(city_id: 5, lat: 40.706496, lon: -74.00911300000001)
devBootcamp.bootcampcoords.create(city_id: 3, lat: 32.8091531, lon: -98.11537799999996)
codeCore.bootcampcoords.create(city_id: 8, lat: 49.280379, lon: -123.10690499999998)
lightHouseLabs.bootcampcoords.create(city_id: 8, lat: 49.281844, lon: -123.108162)

1000.times do |i|
    User.create!(name: Faker::Name.name, email: Faker::Internet.email, password: "password", funds_per_month: rand(1..40000))
 end



