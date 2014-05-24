Ember.Handlebars.helper 'formattedDate', (date) ->
  moment(date).format("dddd MMM Do")
