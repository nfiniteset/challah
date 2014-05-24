Challah.DinnersNewView = Ember.View.extend
  templateName: 'dinners_new'
  init: ->
    @_super()
    @set 'controller', Challah.DinnersNewController.create
      model: @get('model')
      container: this.get('container')
