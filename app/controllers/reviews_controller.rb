class ReviewsController < ApplicationController
  def new
    @eaten_food = current_user.eaten_foods.find(params[:eaten_food_id])
    @review = @eaten_food.build_review
  end

  def create
    @eaten_food = current_user.eaten_foods.find(params[:eaten_food_id])
    @review = @eaten_food.build_review(review_params)
    if @review.save
      redirect_to food_path(@eaten_food.food)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:satisfaction, :comment)
  end
end
