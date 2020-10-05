class Category < ActiveHash::Base
  self.data = [
    { id: 1,  name: '--' },
    { id: 2,  name: 'General' },
    { id: 3,  name: 'Everyday Life' },
    { id: 4,  name: 'Business' },
    { id: 5,  name: 'Culture' },
    { id: 6,  name: 'Travel' },
    { id: 7,  name: 'Food & Drink' },
    { id: 8,  name: 'Language' },
    { id: 9,  name: 'Sports' },
    { id: 10, name: 'Music' },
    { id: 11, name: 'Shopping' },
    { id: 12, name: 'Anime/Manga' },
    { id: 13, name: 'Others' },
  ]
end
