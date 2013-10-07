class AttendeeSerializer < UserSerializer
  has_one :current_location
  attribute :minutes_away
  attribute :miles_away
  attribute :velocity

  def velocity
    object.velocity.round(2) if object.velocity
  end

  def minutes_away
    object.time_to(Event.find(1)).round if object.time_to(Event.find(1))
  end

  def miles_away
    object.distance_to(Event.find(1)).round(2) if object.distance_to(Event.find(1))
  end
end
