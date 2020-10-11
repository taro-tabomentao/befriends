class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :gender
  belongs_to_active_hash :country
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :image
  has_many :events, through: :user_events, dependent: :destroy
  has_many :user_events
  has_many :articles
  has_many :questions
  has_many :answers
  has_many :comments
  has_many :event_comments

  with_options numericality: { other_than: 1, message: 'has to be selected' } do
    validates :gender_id
  end

  with_options presence: true do
    validates :full_name
    validates :birthday
  end

  # PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  # validates_format_of :password, with: PASSWORD_REGEX, message: 'includes both letters and numbers'
end
