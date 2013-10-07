class LocationsController < RocketPants::Base
  def index
    expose User.find(params[:user_id]).locations
  end

  def create
    params[:location][:user_id] = params[:user_id]
    ## expose params[:location]
    expose Location.create(params[:location])
  end
end
