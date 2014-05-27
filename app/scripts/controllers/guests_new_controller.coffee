Challah.GuestsNewController = Ember.ObjectController.extend
  needs: 'guests'
  actions:
    createGuest: ->
      @get('controllers.guests.store').createRecord('guest', @get('content'))
      @$().reset()
