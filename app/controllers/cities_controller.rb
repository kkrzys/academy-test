class CitiesController < ApplicationController
  
  before_action :authenticate_user!
  before_action :get_city, only: [:show, :edit, :update, :destroy]

  def index
    @cities = City.all
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)

    if @city.save
      redirect_to @city
    else
      render 'new'
    end
  end

  def update
    if @city.update(city_params)
      redirect_to @city
    else
      render 'edit'
    end
  end

  def destroy
    @city.destroy
    redirect_to cities_path
  end

  private
    def city_params
      params.require(:city).permit(:name, :short_name)
    end

    def get_city
      @city = City.find(params[:id])
    end

end
