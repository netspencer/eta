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

  def latitude
    self.current_location.latitude
  end

  def longitude
    self.current_location.longitude
  end

  def to_coordinates
    [self.latitude, self.longitude]
  end

  # returns mph
  def velocity
    self.current_location.velocity_since_last.round unless self.current_location.nil?
  end

  def distance_to(obj)
    self.current_location.distance_to(obj) unless self.current_location.nil?
  end

  # returns minutes
  def time_to(obj)
    return false if self.current_location.nil? || velocity == 0
    hours = self.distance_to(obj) / self.velocity
    minutes = hours * 60

    return minutes
  end

  def current_location
    self.locations.order("created_at").last
  end

end
