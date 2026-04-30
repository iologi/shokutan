require 'rails_helper'

RSpec.describe EatenFood, type: :model do
  it { should belong_to(:user) } # userに属している
  it { should belong_to(:food).optional } # foodが存在する場合は属している
  it { is_expected.to validate_presence_of(:user_id) } # user_idは重複しない
end
