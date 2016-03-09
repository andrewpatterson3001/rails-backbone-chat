Chatroom.Views.Messages ||= {}

class Chatroom.Views.Messages.IndexView extends Backbone.View
  template: JST["backbone/templates/messages/index"]

  initialize: () ->
    @collection.bind('reset', @addAll)

  addAll: () =>
    @collection.each(@addOne)

  addOne: (message) =>
    view = new Chatroom.Views.Messages.MessageView({model : message})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(messages: @collection.toJSON() ))
    @addAll()

    return this
