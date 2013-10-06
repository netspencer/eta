class EventSerializer < ActiveModel::Serializer
  attribute :id
  attribute :name
  has_one :creator
  has_one :venue
  has_many :attendees
end
