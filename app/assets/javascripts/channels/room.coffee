App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    alert data['message']

  speak: (message) ->
  	# Pass message from (this) client side channel into server side (room) channel
    @perform 'speak', message: message
