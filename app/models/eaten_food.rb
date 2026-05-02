class EatenFood < ApplicationRecord
  belongs_to :user
  belongs_to :food, optional: true

  has_one :review, dependent: :destroy
end
