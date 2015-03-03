class PropertiesController < ApplicationController
	def new
		@property = Property.new
		@bootcamps = Bootcamp.all
	end
end
