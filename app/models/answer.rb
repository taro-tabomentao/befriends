class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  with_options presence: true do
    validates :content
  end
end
