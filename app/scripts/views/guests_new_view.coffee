Challah.GuestsNewView = Ember.View.extend
  templateName: 'guests_new'
  tagName: 'form'
  classNames: ['form']

  init: ->
    @_super()
    @set 'controller', Challah.GuestsNewController.create
      model: @get('model')
      container: this.get('container')

  submit: ->
    @get('controller').send('createGuest')
    false
