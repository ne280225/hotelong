# == Schema Information
#
# Table name: plans
#
#  id          :integer          not null, primary key
#  name        :string
#  apply_count :integer
#  price       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class PlanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
