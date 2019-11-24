class BookingsController < ApplicationController
  def new
    @bookings = Booking.all
  end

  def create
  end

  def destroy
  end
end
