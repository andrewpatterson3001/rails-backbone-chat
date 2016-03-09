class Chatroom.Models.Message extends Backbone.Model
  paramRoot: 'message'

  defaults:
    author: null
    content: null

class Chatroom.Collections.MessagesCollection extends Backbone.Collection
  model: Chatroom.Models.Message
  url: '/messages'
