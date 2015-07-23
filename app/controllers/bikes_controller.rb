class BikesController < ApplicationController
  before_action :set_bike, only: [:edit, :update]

  def index
    @bikes = Bike.all
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    creation_message = "#{@bike.year} #{@bike.brand} #{@bike.style} bike has been created."
    redirect_to root_path,
      notice: creation_message
    @bike.save
  end

  def edit
  end

  def update
    @bike.update(bike_params)
    update_message = "#{@bike.year} #{@bike.brand} #{@bike.style} bike has been updated."
    redirect_to root_path, notice: update_message
  end

  def bike_params
    params.require(:bike).permit(:style, :brand, :year, :price)
  end

  def set_bike
    @bike = Bike.find(params[:id])
  end
end