class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :article

  with_options presence: true do
    validates :content
  end
end
