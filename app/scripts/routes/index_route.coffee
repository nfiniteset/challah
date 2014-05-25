Challah.IndexRoute = Ember.Route.extend
  beforeModel: ->
    @transitionTo('dinners')
