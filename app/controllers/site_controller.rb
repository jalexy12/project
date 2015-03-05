require 'json'

class SiteController < ApplicationController
		class Zilyo
		    include HTTParty

		    base_uri 'https://zilyo.p.mashape.com'
		    headers 'Accept' => 'application/json'

		    def initialize(zilyo_key)
		    	self.class.headers('X-Mashape-Key' => zilyo_key)
		    end

		    def search(query)
		    	self.class.get('/search', :query => query)
		    end
		end
	def home
		@cities = City.all
		@bootcamps = Bootcamp.all
		@property = Property.new
	end
	def search
		###ROOMORAMA
		# client = RoomoramaApi::Client.new 'Z2YSZoQxGQyGCIJTnRuec4fFbbG1Jirn5GigXp1mgRo'
		# searchproperties = client.properties_find destination: params[:q]
		# @properties = searchproperties['result']
		####GEOCODER
		results = Geocoder.coordinates(params[:q])
		lat = results[0]
		lon = results[1]
		####FARADAY
		# conn = Faraday.new(:url => "https://zilyo.p.mashape.com/search?latitude=#{lat}&longitude=#{lon}") do |faraday|
		#   # faraday.request  :url_encoded             # form-encode POST params
		#   faraday.response :logger                  # log requests to STDOUT
		#   # faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
		# end
		# conn.get do |req|                           # GET http://sushi.com/search?page=2&limit=100
		#   req.headers['X-Mashape-Key'] = "tXnQCZACTdmshnoQ9AKPzkcoytDvp1Y58D4jsnjfW1s8PmfvJh"
		#   req.headers['Accept'] = 'application/json'
		#   p req.headers
		# end
		# response = conn.get
		# p response.body
		####UNIREST
		# response = Unirest.get "https://zilyo.p.mashape.com/search?latitude=#{lat}&longitude=#{lon}&page=1&pricemax=2000",
		#   headers:{
		#     "X-Mashape-Key" => "tXnQCZACTdmshnoQ9AKPzkcoytDvp1Y58D4jsnjfW1s8PmfvJh",
		#     "Accept" => "application/json"
		#   }
		#   p response
		zilyo = Zilyo.new("tXnQCZACTdmshnoQ9AKPzkcoytDvp1Y58D4jsnjfW1s8PmfvJh")
		response = zilyo.search({ latitude: lat, longitude: lon, numofbedrooms: params[:numrooms], resultsperpage: 50  })
		searchproperties = JSON.parse(response.body)
		@coordinates = []
		@properties = searchproperties['result']
		@properties.each_with_index do |prop, index|
			propCoords = prop['latLng']
			@propLat = propCoords[0]
			@propLon = propCoords[1]
		 @coordinates.push([@propLat, @propLon])
		end


		@hash = Gmaps4rails.build_markers(@coordinates) do |property, marker|
 			 @lat = property[0]
 			 @lng = property[1]
		end
	
	end
	def about
	end
end
