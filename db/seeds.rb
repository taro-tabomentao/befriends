
# ユーザー

2.times do |n|
  name = Faker::Name.name
  email = Faker::Internet.free_email
  password = "12345q"
  gender = Faker::Number.between(from: 2, to: 4)
  country = Faker::Number.between(from: 2, to: 62)
  birthday = Faker::Date.birthday(min_age: 18, max_age: 65)
  city = Faker::Address.city
  user = User.create!(
    full_name: name,
    email: email,
    password: password,
    password_confirmation: password,
    gender_id: gender,
    country_id: country,
    city: city,
    birthday: birthday,
  )
  user.image.attach(io: File.open("./db/fixtures/icon#{n}.jpg"), filename: "icon#{n}.jpg" )
end

#イベント
#イベント1
event = Event.new(
  title: "Test",
  country_id: 32,
  category_id: 2,
  start_time: Faker::Time.between_dates(from: Date.today - 1, to: Date.today, period: :all),
  end_time: Faker::Time.between_dates(from: Date.today - 1, to: Date.today, period: :all),
  online: false,
  place: Faker::Address.city,
  content: Faker::Lorem.characters
)
event.image.attach(io: File.open("./db/fixtures/event0.jpg"), filename: "event0.jpg" )
event.save!

#イベント2
event = Event.new(
  title: "Test",
  country_id: 32,
  category_id: 2,
  start_time: Faker::Time.between_dates(from: Date.today - 1, to: Date.today, period: :all),
  end_time: Faker::Time.between_dates(from: Date.today - 1, to: Date.today, period: :all),
  online: false,
  place: Faker::Address.city,
  content: Faker::Lorem.characters
)
event.image.attach(io: File.open("./db/fixtures/event1.jpg"), filename: "event1.jpg" )
event.save!

#イベント参加

UserEvent.create!(
  user_id: 1,
  event_id: 1
)

UserEvent.create!(
  user_id: 1,
  event_id: 2
)

#イベントコメント
EventComment.create!(
  user_id: 2,
  event_id: 1,
  content: "Test Comment"
)

#記事
article = Article.new(
  user_id: 1,
  title: "Test",
  country_id: 32,
  category_id: 2,
  content: Faker::Lorem.characters
)
article.image.attach(io: File.open("./db/fixtures/event1.jpg"), filename: "event1.jpg" )
article.save!

#記事コメント
Comment.create!(
  user_id: 2,
  article_id: 1,
  content: "Test Comment"
)

#クエスチョン
question = Question.create(
  user_id: 1,
  title: "Test",
  country_id: 32,
  category_id: 2,
  status_id: 1,
  content: Faker::Lorem.characters
)

#アンサー
Answer.create!(
  user_id: 2,
  question_id: 1,
  content: "Test Comment"
)



