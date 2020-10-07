class EventComment < ApplicationRecord
  belongs_to :user
  belongs_to :event

  with_options presence: true do
    validates :content
  end
end
