class EatenFood < ApplicationRecord
  belongs_to :user
  belongs_to :food, optional: true

  validates :user_id, presence: true
end
