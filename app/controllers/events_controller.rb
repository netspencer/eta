class EventsController < RocketPants::Base
  def index
    paginated Event.all
  end

  def show
    expose Event.find(params[:id])
  end

  def create
    event = Event.new
    event.creator = User.create(params[:event][:creator])
    event.venue = Venue.create(params[:event][:venue])
    params[:event][:attendees].each do |attendee|
      event.attendees << User.create(attendee)
    end
    event.save
    expose event
  end
end
