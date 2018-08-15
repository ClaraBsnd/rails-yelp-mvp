class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    Restaurant.create!(restaurant_params)
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(
      :name, :address, :phone_number, :category
    )
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
