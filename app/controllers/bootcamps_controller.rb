class BootcampsController < ApplicationController
	def index
		@bootcamps = Bootcamp.all
	end
	def show
		@bootcamp = Bootcamp.find_by(id: params[:id])
		@hash = Gmaps4rails.build_markers(@bootcamp.bootcampcoords) do |bootcamp, marker|
  			marker.lat bootcamp.lat
  			marker.lng bootcamp.lon
		end
	end

end
