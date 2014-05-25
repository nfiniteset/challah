Challah.Dinner = DS.Model.extend
  date: DS.attr('date')

Challah.Dinner.reopenClass
  nextAvailableFriday: ->
    @store.find('dinner').then (dinners) ->
      mostRecentDinner = dinners.sortBy('date').get('lastObject')
      Challah.Dinner.followingFriday(mostRecentDinner.get('date'))
  followingFriday: (date) ->
    date = moment(date)
    friOrSat = _([5,6]).include date.day()
    date.day(if friOrSat then 12 else 5)

Challah.Dinner.FIXTURES = [
  {
    id: 0
    date: moment("2014 05 30", "YYYY MM DD").valueOf()
  }
  {
    id: 1
    date: moment("2014 06 06", "YYYY MM DD").valueOf()
  }
]
