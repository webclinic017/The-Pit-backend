class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stop_all_streams
    # stream_from "some_channel"
    @chatroom = Chatroom.find(params[:id])
    
    stream_for @chatroom
  end

  def receive(data)
    user = User.find_by(id: data['userId'])
    message = @chatroom.messages.create(content: data['content'], user: user)
    MessagesChannel.broadcast_to(@chatroom, JSONAPI::Serializer.serialize(message))
  end
  

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    stop_all_streams
  end
end
