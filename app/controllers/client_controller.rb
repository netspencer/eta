class ClientController < ApplicationController
  def show
    @id = params[:id]
    render layout: false
  end
end
