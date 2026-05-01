class FoodsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])
  end

  def wishlist_foods
    @foods = current_user.wishlisted_foods.includes(:category).order(created_at: :desc)
  end
end
