Reflux = require('reflux')

directoryAccess = require('../actions/directoryActions.cjsx')

# Create a data store
directoryStore = Reflux.createStore
  init: () ->
    @listenTo(directoryActions.addEntry, @output)

  output: (person) ->
    @trigger(person)

module.exports = directoryStore
