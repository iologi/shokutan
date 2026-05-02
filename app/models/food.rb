class Food < ApplicationRecord
  validates :name, presence: true
  enum rarity: { common: 1, rare: 2, epic: 3 }

  belongs_to :category
  has_many :wishlist_foods, dependent: :destroy
  has_many :eaten_foods, dependent: :destroy
  has_many :reviews, through: :eaten_foods
end
