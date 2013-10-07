# == Schema Information
#
# Table name: locations
#
#  id                  :integer          not null, primary key
#  latitude            :float
#  longitude           :float
#  user_id             :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  distance_to_last    :float
#  time_since_last     :float
#  velocity_since_last :float
#  accuracy            :float
#

class Location < ActiveRecord::Base
  belongs_to :user
  attr_accessible :latitude, :longitude, :accuracy, :created_at, :user_id

  reverse_geocoded_by :latitude, :longitude

  before_create :set_distance_to_last, if: :user_has_current_location
  before_create :set_time_since_last, if: :user_has_current_location
  before_create :set_velocity_since_last, if: :user_has_current_location

  def user_has_current_location
    return (!self.user.current_location.nil?)
  end

  def set_distance_to_last
    self.distance_to_last = self.distance_to(self.user)
  end

  def set_time_since_last
    # potentially revist Time.now vs self.created_at
    self.time_since_last = Time.now - self.user.current_location.created_at
  end

  def set_velocity_since_last
    time_since_last_in_hours = self.time_since_last / 60 / 60
    self.velocity_since_last = self.distance_to_last / time_since_last_in_hours 
  end

end
