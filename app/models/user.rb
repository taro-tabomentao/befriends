class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :gender
  belongs_to_active_hash :country
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :image
  has_many :events, through: :user_events
  has_many :articles
  has_many :questions
  has_many :answers

  with_options numericality: { other_than: 1 } do
    validates :country_id
    validates :gender_id
  end

  with_options presence: true do
    validates :full_name
    validates :city
    validates :birthday
  end
end