class BootcampsController < ApplicationController
	def index
		@bootcamps = Bootcamp.all
	end
	def show
	end

end
