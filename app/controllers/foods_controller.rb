class FoodsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])

    if user_signed_in?
      @eaten_foods = current_user.eaten_foods.where(food_id: @food.id).joins(:review).includes(:review).order(ate_on: :desc)
    end
  end

  def wishlist_foods
    @foods = current_user.wishlisted_foods.includes(:category).order(created_at: :desc)
  end
end
