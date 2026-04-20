require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to validate_presence_of(:email) } # メールアドレス必須
  it { should validate_uniqueness_of(:email).ignoring_case_sensitivity } # メールアドレスは重複しない
  it do
    is_expected.to validate_length_of(:password).
      is_at_least(6). # パスワードは6文字以上
      is_at_most(128) # パスワードは128文字以下
  end
end
