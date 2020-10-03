class Category < ActiveHash::Base
  self.data = [
    { id: 1,  name: '--' },
    { id: 2,  name: 'General' },
    { id: 3,  name: 'Everyday Life' },
    { id: 4,  name: 'Business' },
    { id: 5,  name: 'Culture' },
    { id: 6,  name: 'Travel' },
    { id: 7,  name: 'Food & Drink' },
    { id: 8,  name: 'Sports' },
    { id: 9,  name: 'Music' },
    { id: 10, name: 'Shopping' },
    { id: 11, name: 'Anime/Manga' },
    { id: 12, name: 'Others' },
  ]
end
