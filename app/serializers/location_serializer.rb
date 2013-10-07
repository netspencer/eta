class LocationSerializer < ActiveModel::Serializer
  attribute :time
  attribute :latitude
  attribute :longitude 
  attribute :accuracy

  def time
    object.created_at
  end
end
