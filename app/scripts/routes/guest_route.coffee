Challah.GuestRoute = Ember.Route.extend
  model: (params) ->
    @store.find('guest', params.guest_id)
