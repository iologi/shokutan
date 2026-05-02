class ReviewsController < ApplicationController
  def new
    @eaten_food = current_user.eaten_foods.find(params[:eaten_food_id])
    @review = @eaten_food.build_review
  end
end
