class DogsController < ApplicationController
  def index
    @dogs = Dog.all
    @markers = @dogs.geocoded.map do |dog|
      {
        lat: dog.latitude,
        lng: dog.longitude
      }
    end
  end

  def show
    @dog = Dog.find(params[:id])
    @booking = Booking.new
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user


    if @dog.save
      redirect_to dog_path(@dog)
    else
      render :new
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:dog_name, :location, :breed, :description)
  end
end
