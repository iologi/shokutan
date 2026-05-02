class EatenFoodsController < ApplicationController
  def index
    @eaten_foods = current_user.eaten_foods.includes(:food).order(ate_on: :desc)
  end

  def new
    @food = Food.find(params[:food_id])
    @eaten_food = current_user.eaten_foods.new(food: @food)
  end

  def create
    @eaten_food = current_user.eaten_foods.build(eaten_food_params)
    if @eaten_food.save
      redirect_to new_eaten_food_review_path(eaten_food_id: @eaten_food.id)
    else
      render :new
    end
  end

  def destroy
    eaten_food = current_user.eaten_foods.find(params[:id])
    eaten_food.destroy!
    redirect_to eaten_foods_path
  end

  private

  def eaten_food_params
    params.require(:eaten_food).permit(:food_id, :ate_on)
  end
end
