class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show 
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new

    if @restaurant.save
      redirect_to restaurants_url
    else 
      render :new
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :email, :capacity, :menu)
  end
end
