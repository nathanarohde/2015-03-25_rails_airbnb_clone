class CitiesController < ApplicationController
  before_action :require_user, only: [:new]

  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
  end

  def edit
    @city = City.find(params[:id])
  end

  def update
    @city = City.find(params[:id])
    if @city.update(city_params)
      flash[:notice] = @city.name + 'has been updated.'
      redirect_to cities_path
    else
      render :edit
    end
  end

  def destroy
    @city = City.find(params[:id])
    @city.destroy
    redirect_to cities_path
  end

  private
  def city_params
    params.require(:city).permit(:name)
  end

end
