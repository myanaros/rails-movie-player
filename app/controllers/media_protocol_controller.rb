class MediaProtocolController < WebsocketRails::BaseController
  def initialize_session
    #any application wide variables can be initialzied here on server start
  end

  def client_connected
  end
end
