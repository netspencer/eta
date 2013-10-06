# == Schema Information
#
# Table name: venues
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  latitude   :float
#  longitude  :float
#  address    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Venue < ActiveRecord::Base
  has_many :events

  attr_accessible :address, :latitude, :longitude, :name

  geocoded_by :address

  after_validation :geocode
end
