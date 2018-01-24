# == Schema Information
#
# Table name: rooms
#
#  id            :integer          not null, primary key
#  class_room_id :integer
#  room_number   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Room < ActiveRecord::Base
	has_many :plans, through: :plan_rooms
	has_many :plan_rooms
	belongs_to :class_room
	has_many :reservations

end
