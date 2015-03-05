class BootcampsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
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
	def new
		@bootcamp = Bootcamp.new
		@cities = City.all
	end

end
