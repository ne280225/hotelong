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

class Member < ActiveRecord::Base
  belongs_to :reservation

  class << self
    def authenticate(user_id, hashed_password)
        member = find_by(user_id: user_id)
        if member && member.hashed_password.present? && member.hashed_password == hashed_password
          member
        else
          nil
        end
      end
    end

end
