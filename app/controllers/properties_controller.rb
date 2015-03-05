class PropertiesController < ApplicationController
	before_action :authenticate_user!
	def new
		@property = Property.new
		@bootcamps = Bootcamp.all
	end
end
