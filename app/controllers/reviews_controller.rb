class ReviewsController < ApplicationController
  def index
    @reviews = Review.joins(:eaten_food).where(eaten_foods: { user_id: current_user.id }).includes(eaten_food: :food).order(eaten_foods: { ate_on: :desc })
  end

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
