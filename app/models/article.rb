class Article < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :country
  belongs_to_active_hash :category
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image

  def self.search(search)
    if search != ''
      Article.where(['title LIKE(?) OR content LIKE(?)', "%#{search}%", "%#{search}%"])
    else
      Article.all
    end
  end
  with_options numericality: { other_than: 1, message: 'has to be selected' } do
    validates :country_id
    validates :category_id
  end

  with_options presence: true do
    validates :title
    validates :content
    validates :image
  end
end
