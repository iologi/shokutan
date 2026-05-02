class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: { general: 0, admin: 1 }

  has_many :foods, dependent: :destroy
  has_many :wishlist_foods, dependent: :destroy
  has_many :wishlisted_foods, through: :wishlist_foods, source: :food
  has_many :eaten_foods, dependent: :destroy

  def wishlist(food)
    wishlisted_foods << food
  end

  def unwishlist(food)
    wishlisted_foods.destroy(food)
  end

  def wishlist?(food)
    wishlisted_foods.include?(food)
  end
end
