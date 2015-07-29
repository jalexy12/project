class CitiesController < ApplicationController
  before_action :set_city,           only:   [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show, :shownew]
  # ActionController::Base.helpers.asset_path("miami1.jpg", type: :image)
   respond_to :html, :xml, :json
  # GET /cities
  # GET /cities.json
  def index
    @cities = City.all
  end

  # GET /cities/1
  # GET /cities/1.json
  def show
    @city = City.find_by(id: params[:id])
    @coords = @city.bootcampcoords.where(city_id: @city.id)
     @hash = Gmaps4rails.build_markers(@coords = @city.bootcampcoords.where(city_id: @city.id)) do |coordinates, marker|
      marker.lat coordinates.lat
      marker.lng coordinates.lon
      end
       respond_with @hash
  end
  def shownew
       @city = City.find_by(id: params[:id])
       @coords = @city.bootcampcoords.where(city_id: @city.id)
       @hash = Gmaps4rails.build_markers(@city.bootcampcoords.where(city_id: @city.id)) do |coordinates, marker|
       marker.lat coordinates.lat
        marker.lng coordinates.lon
      end
       respond_with @hash
  end

  # GET /cities/new
  def new
    @city = City.new
  end

  # GET /cities/1/edit
  def edit
  end

  # POST /cities
  # POST /cities.json
  def create
    @city = City.new(city_params)

    respond_to do |format|
      if @city.save
        format.html { redirect_to @city, notice: 'City was successfully created.' }
        format.json { render :show, status: :created, location: @city }
      else
        format.html { render :new }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cities/1
  # PATCH/PUT /cities/1.json
  def update
    respond_to do |format|
      if @city.update(city_params)
        format.html { redirect_to @city, notice: 'City was successfully updated.' }
        format.json { render :show, status: :ok, location: @city }
      else
        format.html { render :edit }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cities/1
  # DELETE /cities/1.json
  def destroy
    @city.destroy
    respond_to do |format|
      format.html { redirect_to cities_url, notice: 'City was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_params
      params.require(:city).permit(:name, :image, :description, :bootcamps)
    end
end
