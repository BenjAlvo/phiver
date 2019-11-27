class ReviewsController < ApplicationController
  before_action :set_service

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.service = @service
    @review.user = current_user
    authorize @review
    if @review.save
      redirect_to service_path(@service)
    else
      render :new
    end
  end

  private

  def set_service
    @service = Service.find(params[:service_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating, :title)
  end
end
