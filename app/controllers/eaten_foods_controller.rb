class EatenFoodsController < ApplicationController
  def new
    @food = Food.find(params[:food_id])
    @eaten_food = current_user.eaten_foods.new(food: @food)
  end
end
