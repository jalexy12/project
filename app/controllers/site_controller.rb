require 'json'

class SiteController < ApplicationController
	def home
		@cities = City.all
		@bootcamps = Bootcamp.all
		@property = Property.new
	end
	def search
		client = RoomoramaApi::Client.new 'Z2YSZoQxGQyGCIJTnRuec4fFbbG1Jirn5GigXp1mgRo'
		searchproperties = client.properties_find destination: params[:q]
		@properties = searchproperties['result']
		p searchproperties['status']
		p searchproperties['pagination']
		# IO.write('properties.json', @searchproperties.to_json)
	end
end
