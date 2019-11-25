class ServicesController < ApplicationController
  before_action :authenticate_user!
  include Pundit
  before_action :set_service, only: [:show, :destroy]

  def index
    @services = Service.all
    authorize @service
  end

  def show
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to @service
    else
      render :new
    end
  end

  def destroy
    @service.destroy
    redirect_to services_path
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:name, :photo, :description, :price)
  end

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
