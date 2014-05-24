Challah.DinnerRoute = Ember.Route.extend(
  model: (params) ->
    @get('store').find('dinner', params.dinner_id)
)
