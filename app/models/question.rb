class Question < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :country
  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to :user
  has_many :answers

  with_options numericality: { other_than: 1, message: 'has to be selected' } do
    validates :country_id
    validates :category_id
    validates :status_id
  end

  with_options presence: true do
    validates :title
    validates :text
  end
end
