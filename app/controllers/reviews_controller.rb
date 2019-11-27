class ReviewsController <

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.service = @service
    if @review.save
      redirect_to service_path(@service)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :title)
  end
end
