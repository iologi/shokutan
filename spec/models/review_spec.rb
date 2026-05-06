require 'rails_helper'

RSpec.describe Review, type: :model do
  it { should belong_to(:eaten_food) } # eaten_foodに属している
  it { should validate_presence_of(:satisfaction) } # satisfaction必須
end
