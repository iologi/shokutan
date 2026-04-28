class Food < ApplicationRecord
  validates :name, presence: true
  enum rarity: { common: 1, rare: 2, epic: 3 }

  belongs_to :category
  has_many :wishlist_foods, dependent: :destroy
end
