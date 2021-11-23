class DashboardsController < ApplicationController
  def show
    @dogs = current_user.dogs
    @bookings = current_user.bookings
  end
end
