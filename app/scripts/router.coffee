Challah.Router.map ->

  @resource 'dinners', path: '/dinners', ->
  @resource 'dinner', path: '/dinner/:dinner_id', ->
    @route 'edit', path: '/edit'
