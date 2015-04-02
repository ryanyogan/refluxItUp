Reflux = require('reflux')

directoryActions = require('../actions/directoryActions.cjsx')

countStore = Reflux.createStore
  init: () ->
    @listenTo(directoryActions.updateCount, @ouput)

  output: (count) ->
    # Trigger the change in this store which will alert any listenrs
    @trigger(count)

module.exports = countStore
