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
  has_many :following_relationships,foreign_key: "follower_id", class_name: "FollowRelationship",  dependent: :destroy
  has_many :followings, through: :following_relationships
  has_many :follower_relationships,foreign_key: "following_id",class_name: "FollowRelationship", dependent: :destroy
  has_many :followers, through: :follower_relationships


  with_options numericality: { other_than: 1, message: 'has to be selected' } do
    validates :gender_id
  end

  with_options presence: true do
    validates :full_name
    validates :birthday
  end

  def self.guest
    find_or_initialize_by(full_name: 'Guest', email: 'guest@example.com', gender_id: 2, country_id: 32, city: 'Tokyo', birthday: '1990-3-16', language: 'Japanese, English') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.save
      user.image.attach(io: File.open('./db/fixtures/icon11.jpg'), filename: 'icon11.jpg')
    end
  end

  def following?(other_user)
    self.followings.include?(other_user)
  end

  def follow(other_user)
    self.following_relationships.create(following_id: other_user.id)
  end

  def unfollow(other_user)
    self.following_relationships.find_by(following_id: other_user.id).destroy
  end


  # PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  # validates_format_of :password, with: PASSWORD_REGEX, message: 'includes both letters and numbers'
end
