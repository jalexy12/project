require 'json'

class SiteController < ApplicationController
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
		# results = Geocoder.coordinates(params[:q])
		# lat = results[0]
		# lon = results[1]
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

	end
	def about
	end
end
