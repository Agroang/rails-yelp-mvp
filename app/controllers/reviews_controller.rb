class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurants_path
    else
      render :new
      # render 'new.html.erb'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
