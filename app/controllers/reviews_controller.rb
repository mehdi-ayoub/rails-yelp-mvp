class ReviewsController < ApplicationController

  before_action :set_restaurant
  def new
    # set the restaurant first put raise here you will see the params to be passed
    @review = Review.new
  end

  def create
    # find the restaurant you want to review using the params
    @review = Review.new(review_params)
    # finding the restaurant and we already have this in the below @restaurant
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  # why we set a restaurant here?

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end


end
