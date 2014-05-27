Challah.Router.map ->
  @resource 'dinners', path: '/dinners', ->
  @resource 'dinner', path: '/dinner/:dinner_id', ->
    @route 'edit', path: '/edit'
  @resource 'guests', path: '/guests', ->
  @resource 'guest', path: '/guest/:guest_id', ->
