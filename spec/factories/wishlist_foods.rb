FactoryBot.define do
  factory :wishlist_food do
    association :user
    association :food
  end
end
