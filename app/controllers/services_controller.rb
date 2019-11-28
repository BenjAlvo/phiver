class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_service, only: [:show, :destroy, :edit, :update, :average]

  def index
    if params[:query].present?
      sql_query = "services.name ILIKE :query OR users.name ILIKE :query"
      @services = policy_scope(Service.joins(:user).where(sql_query, query: "%#{params[:query]}%"))
    else
      @services = policy_scope(Service)
    end
  end

  def show
  end

  def new
    @service = Service.new
    authorize @service
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    if @service.save
      redirect_to @service
    else
      render :new
    end
    authorize @service
  end

  def destroy
    @service.destroy
    redirect_to services_path
    authorize @service
  end

  def edit
    authorize @service
  end

  def update
    if @service.update(service_params)
      redirect_to @service
    else
      render :edit
    end
  end

  private

  def set_service
    @service = Service.find(params[:id])
    authorize @service
  end

  def service_params
    params.require(:service).permit(:name, :photo, :description, :price)
  end

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
