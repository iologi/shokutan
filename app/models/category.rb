class Category < ApplicationRecord
  has_many :foods, dependent: :restrict_with_exception # 子レコードがある場合は削除するときエラー

  validates :name, presence: true, uniqueness: true
end
