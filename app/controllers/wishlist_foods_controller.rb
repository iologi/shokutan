class WishlistFoodsController < ApplicationController
  def create
    @food = Food.find(params[:food_id])
    current_user.wishlist(@food)
  end

  def destroy
    @food = current_user.wishlist_foods.find(params[:id]).food
    current_user.unwishlist(@food)
  end
end
