class MediaProtocolController < WebsocketRails::BaseController
  def initialize_session
    #any application wide variables can be initialzied here on server start
  end

  def client_connected
    puts "client connected"
    trigger_success
  end

  def whoami
    puts "whoami: "+message
    send_message 'youare', 'a user'
  end
end
