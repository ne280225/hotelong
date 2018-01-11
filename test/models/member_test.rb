# == Schema Information
#
# Table name: members
#
#  id              :integer          not null, primary key
#  user_id         :string
#  address         :string
#  tel             :integer
#  age             :integer
#  email           :string
#  admin_authority :boolean
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "authenticate" do
    member = FactoryGirl.create(:member, name: "taro",
      password: "happy", password_confirmation: "happy")
    assert_nil Member.authenticate("taro", "lucky")
    assert_equal member, Member.authenticate("taro", "happy")
  end
end
