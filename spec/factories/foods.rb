FactoryBot.define do
  factory :food do
    sequence(:name) { |n| "食材#{n}" }
    rarity { :common }
    association :category
  end
end
