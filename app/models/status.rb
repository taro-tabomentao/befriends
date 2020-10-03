class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: 'Open' },
    { id: 2, name: 'Close' }
  ]
end
