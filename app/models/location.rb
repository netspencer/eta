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
#  distance_from_last  :float
#  time_since_last     :float
#  velocity_since_last :float
#

class Location < ActiveRecord::Base
  belongs_to :user
  attr_accessible :latitude, :longitude
end
