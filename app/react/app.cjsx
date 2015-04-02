React = require('react')

# Directory

Directory = require('./components/directory.cjsx')

# Count
countStore = require('./stores/countStore.cjsx')
Count = require('./components/count.cjsx')

data = [
  {
    id: 1
    name: 'John Doe'
    position: 'A silly wanker'
    email: 'fake-email@address.com'
  }
  {
    id: 2
    name: 'Jane Doe'
    position: 'A monkey'
    email: 'fake-email@example.com'
  }
]

React.render(<Directory data={data} />, document.getElementById('directory'))
React.render(<Count />, document.getElementById('count'))

