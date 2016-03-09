class Chatroom.Routers.MessagesRouter extends Backbone.Router
  initialize: (options) ->
    @messages = new Chatroom.Collections.MessagesCollection()
    @messages.reset options.messages

  routes:
    "new"      : "newMessage"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newMessage: ->
    @view = new Chatroom.Views.Messages.NewView(collection: @messages)
    $("#messages").html(@view.render().el)

  index: ->
    @view = new Chatroom.Views.Messages.IndexView(collection: @messages)
    $("#messages").html(@view.render().el)

  show: (id) ->
    message = @messages.get(id)

    @view = new Chatroom.Views.Messages.ShowView(model: message)
    $("#messages").html(@view.render().el)

  edit: (id) ->
    message = @messages.get(id)

    @view = new Chatroom.Views.Messages.EditView(model: message)
    $("#messages").html(@view.render().el)
