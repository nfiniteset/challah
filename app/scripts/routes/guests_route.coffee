Challah.GuestsRoute = Ember.Route.extend
  model: ->
    @store.find('guest')

  setupController: (controller, model) ->
    controller.setProperties
      model: model
      newGuest: {}
