class UsersController < RocketPants::Base
  def show
    expose User.find(params[:id])
  end
end
