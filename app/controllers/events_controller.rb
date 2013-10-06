class EventsController < RocketPants::Base
  def index
    paginated Event.all
  end
end
