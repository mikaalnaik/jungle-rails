class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @review.product_id = params[:product_id]
    @review.user = current_user
    @review.save
    redirect_to  :back
end



private
def review_params
  params.require(:review).permit(:description, :rating)
end

end
