class BookingsController < ApplicationController
  def new
    @dog = Dog.find(params[:dog_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @dog = Dog.find(params[:dog_id])
    booking.dog = @dog
    @booking.user = current_user
    if @booking.end_time < @booking.start_time
    else
<<<<<<< HEAD
      @booking.save
    end

=======
    @booking.save
    end
>>>>>>> e9af6c79323f2688ea2807387380ee2711add2cb
  redirect_to dashboard_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :notes)
  end
<<<<<<< HEAD

=======
>>>>>>> e9af6c79323f2688ea2807387380ee2711add2cb
end
