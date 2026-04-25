class Food < ApplicationRecord
  belongs_to :category

  validates :name, presence: true
  enum rarity: { common: 1, rare: 2, epic: 3 }
end
