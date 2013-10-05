# == Schema Information
#
# Table name: users
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  phone_number :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class User < ActiveRecord::Base
  has_many :locations
  has_many :memberships
  has_many :events, through: :memberships

  attr_accessible :name, :phone_number
end
