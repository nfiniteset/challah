Challah.DinnerEditController = Ember.ObjectController.extend
  needs: 'dinner'
  actions:
    save: ->
      @get('buffer').forEach (attr) =>
        this.get('controllers.dinner.model').set(attr.key, attr.value)
      @transitionToRoute 'dinner', @get('model')

