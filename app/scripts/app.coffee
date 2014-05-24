Challah = window.Challah = Ember.Application.create()
Challah.ApplicationAdapter = DS.FixtureAdapter

# Order and include as you please.
require 'scripts/controllers/*'
require 'scripts/store'
require 'scripts/models/*'
require 'scripts/routes/*'
require 'scripts/views/*'
require 'scripts/helpers/*'
require 'scripts/router'
