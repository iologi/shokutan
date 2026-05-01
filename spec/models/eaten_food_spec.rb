require 'rails_helper'

RSpec.describe EatenFood, type: :model do
  it { should belong_to(:user) } # userに属している
  it { should belong_to(:food).optional } # foodが存在する場合は属している
end
