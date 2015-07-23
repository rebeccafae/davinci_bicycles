class BikesController < ApplicationController
  def index
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    creation_message = "#{@bike.year} #{@bike.brand} #{@bike.style} bike has been created for $#{@bike.price}"
    redirect_to root_path,
      notice: creation_message
    @bike.save
  end

  def bike_params
    params.require(:bike).permit(:style, :brand, :year, :price)
  end
end