# == Schema Information
#
# Table name: class_rooms
#
#  id             :integer          not null, primary key
#  person_price   :integer
#  style_name     :string
#  expect_count   :integer
#  can_add_bed    :boolean
#  discount_rate  :float
#  surcharge_rate :float
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class ClassRoom < ActiveRecord::Base
end
