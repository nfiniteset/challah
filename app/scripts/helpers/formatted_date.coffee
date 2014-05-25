Ember.Handlebars.helper 'formattedDate', (date) ->
  return '' unless date?
  moment(date).format("dddd MMM Do")
