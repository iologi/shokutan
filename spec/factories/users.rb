FactoryBot.define do
  factory :user do
    email { Faker::Internet.unique.email }
    password { 'password' }
    password_confirmation { 'password' }
  end

  trait :general do
    role { :general }
  end

  trait :admin do
    role { :admin }
  end
end
