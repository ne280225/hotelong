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
#	validates :number, presence: true,numericality: { only_integer: true,greater_than: 0, less_than: 100, allow_blank: true },
#    uniqueness: true
#  validates :name, presence: true,
#    format: { with: /\A[A-Za-z]\w*\z/, allow_blank: true,message: :invalid_member_name },
#    length: { minimum: 2, maximum: 20, allow_blank: true },uniqueness: { case_sensitive: false }
#  validates :full_name, length: { maximum: 20 }
#  validate :check_email
#  validates :password, presence: { on: :create },confirmation: { allow_blank: true }
  validates :user_id, presence: true, uniqueness: true
  validates :hashed_password, presence: { on: :create },confirmation: { allow_blank: true }
  validates :address, presence: true
  validates :name, presence: true
  validates :sex, presence: true,numericality: { only_integer: true,greater_than: 0, less_than: 3, allow_blank: true },uniqueness: true
  validates :tel, presence: true
  validates :birthday, presence: true
  validates :email, presence: true,uniqueness: true
  validates :admin_authority, inclusion: { in: [true, false] }
  
  def password=(val)
    if val.present?
      self.hashed_password = BCrypt::Password.create(val)
    end
    @password = val
  end
  
end 
