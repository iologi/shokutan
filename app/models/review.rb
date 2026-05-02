class Review < ApplicationRecord
  belongs_to :eaten_food

  validates :satisfaction, presence: true
end
