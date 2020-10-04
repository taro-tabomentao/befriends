class Event < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :country
  has_one_attached :image
  has_many :user_events
  has_many :users, through: :user_events, dependent: :destroy

  with_options numericality: { other_than: 1 } do
    validates :country_id
    validates :category_id
  end

  with_options presence: true do
    validates :title
    validates :start_time
    validates :end_time
    validates :place
    validates :content
    validates :image
  end

  validates :online, inclusion: {in: [true, false]}

end
