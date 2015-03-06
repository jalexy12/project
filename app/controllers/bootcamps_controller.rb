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
		# @cities = City.all
	end
	def create
		@new_bootcamp_info = params.require(:bootcamp).permit(:name, :description)
		@bootcamp = Bootcamp.new(@new_bootcamp_info, approved: false)
		@city = City.find_by(id: params[:cities])
		if @bootcamp.save
			flash[:notice] = "Bootcamp created successfully"
			redirect_to(root_path)
		else
			flash[:error] = "Bootcamp not created"
			render 'new'
		end
	end
end
