# == Schema Information
#
# Table name: reservations
#
#  id          :integer          not null, primary key
#  room_id     :integer
#  plan_id     :integer
#  member_id   :integer
#  guest_count :integer
#  sum_price   :integer
#  start_date  :date
#  end_date    :date
#  is_extend   :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Reservation < ActiveRecord::Base
	belongs_to :room
	belongs_to :plan
	belongs_to :member
	
end
