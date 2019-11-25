class BookingsController < ApplicationController
  def new
    @bookings = Booking.all
  end

  def create
    raise
    @booking = Booking.new(user_params)

  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:user_id)
  end


end
