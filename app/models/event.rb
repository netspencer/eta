# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  venue_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  creator_id :integer
#

class Event < ActiveRecord::Base
  belongs_to :venue

  belongs_to :creator, class_name: "User"
  has_many :memberships
  has_many :attendees, through: :memberships, source: :user, foreign_key: "user_id"

  attr_accessible :name
end
