# == Schema Information
#
# Table name: plan_rooms
#
#  id         :integer          not null, primary key
#  room_id    :integer
#  plan_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PlanRoom < ActiveRecord::Base
end
