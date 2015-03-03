class BootcampsController < ApplicationController
	def index
		@bootcamps = Bootcamp.all
	end
	def show
		@bootcamp = Bootcamp.find_by(id: params[:id])
	end

end
