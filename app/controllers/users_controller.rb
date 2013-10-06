class UsersController < RocketPants::Base
  def show
    paginated User.find(params[:id]).locations
  end
end
