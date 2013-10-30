class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to root_url, notice: "#{@restaurant.name} was successfully created!"
    else
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(restaurant_params)
      redirect_to root_url, notice: "#{@restaurant.name was successfully updated!}"
    else
      render :edit
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to root_url, alert: "#{@restaurant.name} was successfully deleted!"
  end

private
  
  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :address, :phone_number)
  end
end
