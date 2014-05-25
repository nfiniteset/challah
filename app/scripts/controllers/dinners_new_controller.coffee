Challah.DinnersNewController = Ember.ObjectController.extend
  needs: 'dinners'
  actions:
    createNextDinner: ->
      Challah.Dinner.nextAvailableFriday().then (nextFriday) =>
        @set('date', nextFriday)
        @get('controllers.dinners.store').createRecord('dinner', @get('content'))
