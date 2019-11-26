class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def create
    @booking = Booking.new
    @booking.user = current_user
    @booking.service = Service.find(params[:service_id])
    authorize @booking
    @booking.save
    redirect_to service_booking_path(@booking.service, @booking)
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:user_id)
  end
end
