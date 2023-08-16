class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @restaurant = Restaurant.new
  end

  # def new
    
  # end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to show_path(@restaurant)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
