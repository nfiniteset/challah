Challah.Dinner = DS.Model.extend
  date: DS.attr('date')
  notes: DS.attr('string')

Challah.Dinner.reopenClass
  nextAvailableFriday: ->
    @store.find('dinner').then (dinners) ->
      mostRecentDinner = dinners.sortBy('date').get('lastObject')
      Challah.Dinner.followingFriday(mostRecentDinner.get('date'))
  followingFriday: (date) ->
    date = moment(date)
    friOrSat = _([5,6]).include date.day()
    date.day(if friOrSat then 12 else 5).valueOf()

Challah.Dinner.FIXTURES = [
  {
    id: 1
    date: moment("2014 06 06", "YYYY MM DD").valueOf()
    notes: 'David and Kieran will bring wine'
  }
  {
    id: 0
    date: moment("2014 05 30", "YYYY MM DD").valueOf()
    notes: 'Chanpory and Harold will bring dessert'
  }
]
