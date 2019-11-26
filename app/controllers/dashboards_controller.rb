class DashboardsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).where(user: current_user)
  end

  def services
    @services = policy_scope(Service).where(user: current_user)
  end

end
