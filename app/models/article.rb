class Article < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :country
  belongs_to_active_hash :category
  belongs_to :user
  has_one_attached :image
  
  with_options numericality: { other_than: 1 } do
    validates :country_id
    validates :category_id
  end
  
  with_options presence: true do
    validates :title
    validates :content
    validates :image
  end
end