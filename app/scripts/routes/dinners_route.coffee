Challah.DinnersRoute = Ember.Route.extend
  model: ->
    @store.find('dinner')

  setupController: (controller, model) ->
    controller.setProperties
      model: model
      newDinner: {}
