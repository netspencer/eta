class EventSerializer < ActiveModel::Serializer
  attribute :id
  attribute :name
  attribute :created_at
  has_one :creator, serializer: CreatorSerializer
  has_one :venue
  has_many :attendees, serializer: AttendeeSerializer
end
