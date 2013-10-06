class VenueSerializer < ActiveModel::Serializer
  attribute :id
  attribute :name
  attribute :address
  attribute :latitude
  attribute :longitude
end
