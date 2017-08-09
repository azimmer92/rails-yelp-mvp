class ReviewsController < ApplicationController
  def index

  end

  def new
    # we need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review.save
  end

  def show
  end

  def edit
  end

  def update
  end

  def destoy
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
