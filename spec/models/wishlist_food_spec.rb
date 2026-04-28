require 'rails_helper'

RSpec.describe WishlistFood, type: :model do
  subject { build(:wishlist_food) }

  it { should belong_to(:user) } # userに属している
  it { should belong_to(:food) } # foodに属している
  it { should validate_uniqueness_of(:food_id).scoped_to(:user_id) } # user単位で重複しない
end
