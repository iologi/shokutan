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

  def eat(food, ate_on: Date.today, custom_name: nil)
    eaten_foods.create(food: food, ate_on: ate_on, custom_name: custom_name)
  end

  def uneat(eaten_food)
    eaten_foods.destroy(eaten_food)
  end

  def eaten?(food, ate_on: Date.today)
    eaten_foods.exists?(food: food, ate_on: ate_on)
  end
end
