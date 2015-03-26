class PlacesController < ApplicationContoller

  def new
    @city = City.find(params[:city_id])
    @place = @city.places.new
  end

  def create
    @city = City.find(params[:city_id])
    @place = @city.places.new(place_params)
    if @place.save
      flash[:notice] = 'Available place added to ' + @city.name
      redirect_to city_path(@place.city)
    else
      render :new
    end
  end

  def edit
    @city = City.find(params[:city_id])
    @place = Place.find(params[:id])
  end

  def update
    @city = City.find(params[:city_id])
    @place = Place.find(params[:id])
    @place.destroy
    redirect_to city_path(@place.city)
  end

  private
  def place_params
    params.require(:place).permit(:name, :price, :description)
  end

end
