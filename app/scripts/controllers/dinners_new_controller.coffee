Challah.DinnersNewController = Ember.ObjectController.extend
  needs: 'dinners'
  actions:
    createNextDinner: ->
      this.get('controllers.dinners.store').createRecord('dinner', @get('content'))
