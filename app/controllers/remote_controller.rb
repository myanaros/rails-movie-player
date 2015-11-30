class RemoteController < ApplicationController
  def control
    @control_channel_name = params[:movie_name]
  end
end
