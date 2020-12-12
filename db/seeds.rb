
# ユーザー

10.times do |i|
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
  user.image.attach(io: File.open("./db/fixtures/icon#{i}.jpg"), filename: "icon#{i}.jpg" )
end

user = User.create!(
  full_name: "Shotaro Okawa",
  email: "test@mail.com",
  password: "password",
  password_confirmation: "password",
  gender_id: 2,
  country_id: 32,
  city: "Tokyo",
  birthday: "1990-3-16",
  language: "Japanese, English"
)
user.image.attach(io: File.open("./db/fixtures/icon10.jpg"), filename: "icon10.jpg" )



users = User.all
user1, user2, user3, user4, user5, user6, user7, user8, user9, user10, user11 = users

#イベント
event = Event.new(
  title: "Kansai International Activities",
  country_id: 32,
  category_id: 11,
  start_time: "2020-10-13 19:00:00",
  end_time: "2020-10-13 21:00:00",
  online: false,
  place: "Osaka",
  content: 
  "This is a group for anyone who are interested in learning languages and doing activities with international friends. Come and join us! All are welcome. We are looking forward to seeing you!

  こちらのグループでは、言語学習や国際的な友人とのアクティビティをおこないます。お気軽にご参加ください。お会いできるのを楽しみにしております。"
)
event.image.attach(io: File.open("./db/fixtures/event0.jpg"), filename: "event0.jpg" )
event.save!

event = Event.new(
  title: "Language & culture",
  country_id: 32,
  category_id: 11,
  start_time:  "2020-10-13 19:00:00",
  end_time: "2020-10-13 21:00:00",
  online: true,
  place: "https://us04web.zoom.us/j/6916494032?pwd=VUJUTGFOYU9CM0ajjjanv09
  ",
  content: "日本語は下記になります。
  Do you want to be fluent in English/Japanese?
  Do you want to participate in one-on-one language exchange sessions?
  If you are serious about learning English/Japanese, Come join our free one-on-one language exchange nights on Thursday :)
  
  「英語/日本語が上手くなりたい」「１対１のランゲージエクスチェンジがしたい・・・」
  真剣に英語/日本語を学びたいと思っている皆さん、私たちのグループにぜひ参加ください！ １対１のランゲージエクスチェンジを木曜日の夜に開催します :)"
)
event.image.attach(io: File.open("./db/fixtures/event1.jpg"), filename: "icon1.jpg" )
event.save!

event = Event.new(
  title: "Club Bilingual",
  country_id: 32,
  category_id: 11,
  start_time: "2020-10-13 19:00:00",
  end_time: "2020-10-13 21:00:00",
  online: false,
  place: "Osaka",
  content: "日本語は下記になります。
  This group is for anyone who loves languages! Speaking 2 or more languages is a tough challenge, but we make it fun. We usually meet at least twice a month and offer various kinds of events including large gatherings and also small, relaxed meetups. Either way, we aim to have fun whilst learning and practicing, so there are always activities and even different kinds of performances, so it's a little different each time. Any level is welcome to all events; there are always complete beginners and also native speakers at each event :)
  このグループは語学が好きな人達のためのものです！2ヶ国語以上の言葉を使うのは
  難しいチャレンジですが、私帯は出来る！楽しみましょう。月に2回以上イベントを開催しておりますので、外国語のレベルを問わず、参加してください。"
)
event.image.attach(io: File.open("./db/fixtures/event2.jpg"), filename: "event2.jpg" )
event.save!

event = Event.new(
  title: "Tokyo International Friends",
  country_id: 32,
  category_id: 11,
  start_time:  "2020-10-13 19:00:00",
  end_time: "2020-10-13 21:00:00",
  online: false,
  place: "Osaka",
  content:"日本語は下記になります
  [About Group]
  'Tokyo International Friends' started in Aug, 2015. In order to spread Japanese culture to the world, encourage Japanese and Non-Japanese exchange, we organize various international events in Tokyo.
    
  [Our Vision]
  ～To be the world's meeting HUB～
  We aim to be ‘the world’s meeting HUB’ for all people who are interested in international exchange. We would like to produce meeting connections among people around the world.
  
  1. International Exchange Events
  We organize international exchange events to encourage Non-Japanese and Japanese exchange.
  - Drink Meetup
  - Pizza Night
  - BBQ and more!
  
  2. Language Exchange Events
  We organize language exchange events to help participants joyfully and easily know other language and culture.
  - Nihongo Meetup
  - English Only Meetup
  - German Meetup and more!
  
  -----------------------------------------------------------
  [グループについて]
  'Tokyo International Friends' は、「日本人と外国人との異文化交流の促進」と「日本文化の世界への発信」を目的に、毎月東京近郊で30個以上の様々なイベントを主催しております。
  
  [理念]
  ～世界中の人々の出逢いのHUBになる～
  私たちは、国際交流イベントや言語交換イベントなどを通じて、世界中の人々の出逢いのHUBになることを目指しています。
  
  [イベントの種類]
  主に2種類のイベントを主催しております。
  
  1. 国際交流イベント
  気軽に楽しく異文化交流ができる様々なイベントを企画しております。
  - 英会話ナイト
  - 英会話ピザナイト
  - BBQ 他！
  
  2. 言語交換イベント
  気軽に楽しく言語交換ができる様々なイベントを企画しております。
  - 日本語のイベント
  - 英語のイベント
  - ドイツ語のイベント 他！
  
  それではイベントでお会いできることを楽しみにしております☆"
)
event.image.attach(io: File.open("./db/fixtures/event3.jpg"), filename: "event3.jpg" )
event.save!

event = Event.new(
  title: "Kyoto Fitness Bootcamp",
  country_id: 32,
  category_id: 12,
  start_time:  "2020-10-13 19:00:00",
  end_time: "2020-10-13 21:00:00",
  online: false,
  place: "Kyoto",
  content: "日本語は下記になります。
  Come join the fun!!! New Bootcampers are always welcome! We're a friendly bunch!
  Boot camps are challenging yet fun fitness classes that are designed to build strength and fitness, promote fat loss and team effort a.k.a Its one of the best ways to take your fitness to the next level, get into amazing shape and great way to make friends Our style is to focus on a dynamic, high intensity and motivational style of group fitness. Such as group relays, pair challenges, timed challenges (push ups, burpess etc). The classes will take place on top of the rooftop of a building in Kyoto.
  
  If you have any questions please don't hesitate to leave us a comment or you can aslo contact us at kyotobootcamp@gmail.com
  
  今世界で人気のBoot camp (HIIT)トレーニングが京都にも登場！ Boot camp (HIIT)トレーニングっていう運動は有酸素運動、腹筋、腕立てふせなどの筋トレ、サーキットトレーニングを使った運動です。 ブートキャンプ的な運動は体脂肪の燃焼効果が普通の有酸素運動の6倍とも言われている。 運動レベル、性別、国籍関係なく、サポーティブな楽しい環境の中で皆で運動をしょう〜 チャレンジをしたい人、強くて綺麗な体を作りたい人、新しい友達を作りたい人、お待ちしています。 お問い合わせは　 たろ（日本語・英語） tarotest@gmail.com"
)
event.image.attach(io: File.open("./db/fixtures/event4.jpg"), filename: "event4.jpg" )
event.save!

event = Event.new(
  title: "Osaka Soccer Club",
  country_id: 32,
  category_id: 12,
  start_time:  "2020-10-13 19:00:00",
  end_time: "2020-10-13 21:00:00",
  online: false,
  place: "Osaka",
  content: "日本語は下記になります。
Come and join us in a fun game of futsal. This is a fun game for anyone who has a little experience of playing soccer. A mix of levels, ages, abilities and nationalities.

Come have get a little sweat on while you enjoy a fun day and make some new friends from the expat community in Osaka.

フットサルに参加しませんか？楽しむためのゲームなので、経験は不問です。一緒に汗をかいて、友達を作りましょう！
"
)
event.image.attach(io: File.open("./db/fixtures/event5.jpg"), filename: "event5.jpg" )
event.save!

event = Event.new(
  title: "Osaka Fun Jogging",
  country_id: 32,
  category_id: 12,
  start_time:  "2020-10-13 19:00:00",
  end_time: "2020-10-13 21:00:00",
  online: false,
  place: "Osaka",
  content: "日本語は下記になります。
  This is the fun jogging event for those who loves to jog with your own pace on the so much beautiful river shore of Yodo River!
  We will meet at the East Side of the Hankyu Juso Station.
  
  Then we put our bags at the Public Bath called Takarayu just nearby the station
  where we take bath/shower after the jogging.
  For those who loves to enjoy some Craft beer after the jogging,let's grab some beer!
  ジョギングを愛する人達のためのイベントです。一緒に素晴らしい淀川を見ながら走りましょう。阪急十三駅の東側に集合です。
  集合後、たらら湯にかばんを置き、ジョギング終わりに汗を流しましょう。もしビールがお好きであれば、お風呂上がりにクラフトビールを一緒に飲みましょう。
  ")
event.image.attach(io: File.open("./db/fixtures/event6.jpg"), filename: "event6.jpg" )
event.save!

event = Event.new(
  title: "African Dance Club",
  country_id: 32,
  category_id: 4,
  start_time:  "2020-10-13 19:00:00",
  end_time: "2020-10-13 21:00:00",
  online: true,
  place: "https://us04web.zoom.us/j/6916494032?pwd=VUJUTGFOYU9CM0ajjjanv09
  ",
  content: "African Dance Club is an exciting online event.
  African Dance is more than just about dance. There is so much happening in the world right now, from the global health crisis to the uprising against police brutality and institutional racism in many parts of the world. This is a crucial moment to come together and enjoy captivating rhythmic motions inspired by sounds from the Motherland! Please join us.
  ")
event.image.attach(io: File.open("./db/fixtures/event7.jpg"), filename: "event7.jpg" )
event.save!

event = Event.new(
  title: "Tennis and Volleyball",
  country_id: 32,
  category_id: 12,
  start_time:  "2020-10-13 19:00:00",
  end_time: "2020-10-13 21:00:00",
  online: false,
  place: "Fukuoka",
  content: "日本語は下記になります。
  Let's play tennis and volleyball!
  一緒にテニスやバレーボールをやりましょう！！
  ")
event.image.attach(io: File.open("./db/fixtures/event8.jpg"), filename: "event8.jpg" )
event.save!


event = Event.new(
  title: "Let's talk about Japanese Manga",
  country_id: 32,
  category_id: 14,
  start_time:  "2020-10-13 19:00:00",
  end_time: "2020-10-13 21:00:00",
  online: true,
  place: "https://us04web.zoom.us/j/6916494032?pwd=VUJUTGFOYU9CM0ajjjanv09
  ",
  content: "
  This is event for Manga lovers. i would like to talk about Japanese Manga like Dragon Ball, Hunter & Hunter, Akira, etc. let's talk with some beers:) 
  ")
event.image.attach(io: File.open("./db/fixtures/event9.jpg"), filename: "event9.jpg" )
event.save!

events = Event.all
event1, event2, event3, event4, event5, event6, event7, event8, event9, event10 = events

#イベント参加

#イベント1
UserEvent.create!(
  user_id: user1.id,
  event_id: event1.id
)

UserEvent.create!(
  user_id: user2.id,
  event_id: event1.id
)
UserEvent.create!(
  user_id: user3.id,
  event_id: event1.id
)
UserEvent.create!(
  user_id: user4.id,
  event_id: event1.id
)


#イベント2
UserEvent.create!(
  user_id: user2.id,
  event_id: event2.id
)
UserEvent.create!(
  user_id: user6.id,
  event_id: event2.id
)
UserEvent.create!(
  user_id: user7.id,
  event_id: event2.id
)


#イベント3
UserEvent.create!(
  user_id: user3.id,
  event_id: event3.id
)
UserEvent.create!(
  user_id: user4.id,
  event_id: event3.id
)
UserEvent.create!(
  user_id: user10.id,
  event_id: event3.id
)


#イベント4

UserEvent.create!(
  user_id: user4.id,
  event_id: event4.id
)
UserEvent.create!(
  user_id: user5.id,
  event_id: event4.id
)
UserEvent.create!(
  user_id: user6.id,
  event_id: event4.id
)
UserEvent.create!(
  user_id: user7.id,
  event_id: event4.id
)
UserEvent.create!(
  user_id: user8.id,
  event_id: event4.id
)

#イベント5

UserEvent.create!(
  user_id: user5.id,
  event_id: event5.id
)
UserEvent.create!(
  user_id: user6.id,
  event_id: event5.id
)
UserEvent.create!(
  user_id: user7.id,
  event_id: event5.id
)


#イベント6
UserEvent.create!(
  user_id: user6.id,
  event_id: event6.id
)
UserEvent.create!(
  user_id: user7.id,
  event_id: event6.id
)
UserEvent.create!(
  user_id: user8.id,
  event_id: event6.id
)

#イベント7
UserEvent.create!(
  user_id: user7.id,
  event_id: event7.id
)
UserEvent.create!(
  user_id: user8.id,
  event_id: event7.id
)
UserEvent.create!(
  user_id: user9.id,
  event_id: event7.id
)

#イベント8
UserEvent.create!(
  user_id: user8.id,
  event_id: event8.id
)
UserEvent.create!(
  user_id: user9.id,
  event_id: event8.id
)
UserEvent.create!(
  user_id: user10.id,
  event_id: event8.id
)
#イベント9
UserEvent.create!(
  user_id: user11.id,
  event_id: event9.id
)
UserEvent.create!(
  user_id: user9.id,
  event_id: event9.id
)
UserEvent.create!(
  user_id: user1.id,
  event_id: event9.id
)

#イベント10
UserEvent.create!(
  user_id: user11.id,
  event_id: event10.id
)
UserEvent.create!(
  user_id: user1.id,
  event_id: event10.id
)
UserEvent.create!(
  user_id: user2.id,
  event_id: event10.id
)

#イベントコメント
EventComment.create!(
  user_id: user2.id,
  event_id: event10.id,
  content: "I have big interest to join this event!"
)

EventComment.create!(
  user_id: user11.id,
  event_id: event10.id,
  content: "Nice! We will have event soon, please check the date, so i will look forward to meeting you then:)"
)

EventComment.create!(
  user_id: user2.id,
  event_id: event1.id,
  content: "We will jave event on Nov 1st in Sports bar in Shibuya, Please just let me know if you have any interst. xxxx@gmail.com"
)

EventComment.create!(
  user_id: user3.id,
  event_id: event2.id,
  content: "We really enjoy this event last time! "
)
EventComment.create!(
  user_id: user4.id,
  event_id: event3.id,
  content: "We will have event on Nov 1st in Sports bar in Shibuya, Please just let me know if you have any interst. xxxx@gmail.com"
)
EventComment.create!(
  user_id: user5.id,
  event_id: event4.id,
  content: "We really enjoy this event last time! "
)
EventComment.create!(
  user_id: user6.id,
  event_id: event5.id,
  content: "We will have event on Nov 1st in Sports bar in Shibuya, Please just let me know if you have any interst. xxxx@gmail.com"
)
EventComment.create!(
  user_id: user7.id,
  event_id: event6.id,
  content: "We really enjoy this event last time! "
)
EventComment.create!(
  user_id: user8.id,
  event_id: event7.id,
  content: "We will have event on Nov 1st in Sports bar in Shibuya, Please just let me know if you have any interst. xxxx@gmail.com"
)
EventComment.create!(
  user_id: user9.id,
  event_id: event8.id,
  content: "We really enjoy this event last time! "
)
EventComment.create!(
  user_id: user11.id,
  event_id: event9.id,
  content: "We will have event on Nov 1st in Sports bar in Shibuya, Please just let me know if you have any interst. xxxx@gmail.com"
)


#記事
article = Article.new(
  user_id: user1.id,
  title: "Sports Bar in Shibuya",
  country_id: 32,
  category_id: 9,
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris efficitur nisl ac eros convallis, vitae sodales diam gravida. Etiam tincidunt erat libero, sit amet efficitur ipsum ornare in. Vivamus non lorem eget leo feugiat lobortis nec a quam. Duis ut blandit risus, at suscipit enim. Maecenas vehicula varius est, non tempus est bibendum sed. Ut ut tortor ipsum. Phasellus ac sapien nulla. Suspendisse dictum ut erat vitae faucibus. Duis ac pharetra orci. Proin consectetur et mauris id congue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aenean commodo sem at velit vehicula, in facilisis quam tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin venenatis tortor vitae eros cursus facilisis. Nulla nulla nulla, venenatis in tellus sit amet, accumsan hendrerit massa. Vestibulum maximus nunc sit amet quam maximus, in aliquam quam tristique.

  Suspendisse potenti. Donec vehicula ante et ante porta, nec iaculis massa rutrum. Pellentesque placerat ipsum id convallis viverra. Morbi porttitor vehicula turpis, eget posuere magna tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed mollis erat a enim eleifend dapibus. Donec malesuada neque vel sem vestibulum accumsan. Aliquam ut cursus nisl. Nulla facilisi. Nam fringilla nibh quis lectus gravida fringilla. Nullam risus mi, convallis vel sem a, aliquam tempor felis.
  
  Sed eget ex et lacus placerat fringilla. Vestibulum id tristique turpis. Aliquam erat volutpat. Aenean ac placerat leo, eget congue mauris. Integer mattis, elit et condimentum porta, nunc leo laoreet erat, et tempus nulla ante ut ex. Proin fringilla sagittis ex, at tristique erat faucibus id. Vestibulum luctus, leo eu iaculis accumsan, eros ipsum auctor tellus, sed tempor odio nulla sed eros. Integer at sapien ligula. Fusce venenatis fringilla rhoncus.
  
  Maecenas ultricies nunc sapien. Nulla vulputate fermentum purus a pretium. Proin porttitor maximus auctor. Morbi facilisis ex eget lacinia lacinia. In rhoncus nunc et varius dictum. Nam feugiat vel purus sit amet congue. Suspendisse a sem ac mauris tincidunt viverra. Duis blandit nec leo eu posuere. Mauris pharetra, ligula ut fermentum porta, massa ligula rutrum ex, ut porta magna mauris eget quam. Maecenas iaculis egestas ligula ut rhoncus. Maecenas viverra elit sem, eget vehicula ex ullamcorper egestas. Quisque vel lectus libero. Curabitur lacus ex, venenatis laoreet elementum vel, gravida eu lorem. Vestibulum non commodo nibh, a tincidunt mi.
  "
)
article.image.attach(io: File.open("./db/fixtures/article4.jpg"), filename: "article4.jpg" )
article.save!

article = Article.new(
  user_id: user2.id,
  title: "What is the Best Japanese food?",
  country_id: 32,
  category_id: 9,
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris efficitur nisl ac eros convallis, vitae sodales diam gravida. Etiam tincidunt erat libero, sit amet efficitur ipsum ornare in. Vivamus non lorem eget leo feugiat lobortis nec a quam. Duis ut blandit risus, at suscipit enim. Maecenas vehicula varius est, non tempus est bibendum sed. Ut ut tortor ipsum. Phasellus ac sapien nulla. Suspendisse dictum ut erat vitae faucibus. Duis ac pharetra orci. Proin consectetur et mauris id congue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aenean commodo sem at velit vehicula, in facilisis quam tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin venenatis tortor vitae eros cursus facilisis. Nulla nulla nulla, venenatis in tellus sit amet, accumsan hendrerit massa. Vestibulum maximus nunc sit amet quam maximus, in aliquam quam tristique.

  Suspendisse potenti. Donec vehicula ante et ante porta, nec iaculis massa rutrum. Pellentesque placerat ipsum id convallis viverra. Morbi porttitor vehicula turpis, eget posuere magna tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed mollis erat a enim eleifend dapibus. Donec malesuada neque vel sem vestibulum accumsan. Aliquam ut cursus nisl. Nulla facilisi. Nam fringilla nibh quis lectus gravida fringilla. Nullam risus mi, convallis vel sem a, aliquam tempor felis.
  
  Sed eget ex et lacus placerat fringilla. Vestibulum id tristique turpis. Aliquam erat volutpat. Aenean ac placerat leo, eget congue mauris. Integer mattis, elit et condimentum porta, nunc leo laoreet erat, et tempus nulla ante ut ex. Proin fringilla sagittis ex, at tristique erat faucibus id. Vestibulum luctus, leo eu iaculis accumsan, eros ipsum auctor tellus, sed tempor odio nulla sed eros. Integer at sapien ligula. Fusce venenatis fringilla rhoncus.
  
  Vivamus eget leo pretium, ultrices nisl quis, rutrum elit. Pellentesque gravida pellentesque nibh, vel sollicitudin enim varius ac. Cras tristique consequat nisl, eu congue urna tempus non. Duis auctor fringilla orci iaculis bibendum. Aenean in commodo nunc, sed bibendum urna. Vestibulum blandit ut justo sit amet laoreet. Nullam nec tellus sagittis, vestibulum ligula ornare, dictum metus. Aliquam tincidunt et lorem a mollis. Etiam scelerisque odio porttitor ex ullamcorper hendrerit. Phasellus ac eros sed enim commodo cursus eget vulputate dui. Donec et egestas justo. Maecenas rutrum eros accumsan lectus porta elementum. Suspendisse consectetur ut est vel efficitur.
  
  Maecenas ultricies nunc sapien. Nulla vulputate fermentum purus a pretium. Proin porttitor maximus auctor. Morbi facilisis ex eget lacinia lacinia. In rhoncus nunc et varius dictum. Nam feugiat vel purus sit amet congue. Suspendisse a sem ac mauris tincidunt viverra. Duis blandit nec leo eu posuere. Mauris pharetra, ligula ut fermentum porta, massa ligula rutrum ex, ut porta magna mauris eget quam. Maecenas iaculis egestas ligula ut rhoncus. Maecenas viverra elit sem, eget vehicula ex ullamcorper egestas. Quisque vel lectus libero. Curabitur lacus ex, venenatis laoreet elementum vel, gravida eu lorem. Vestibulum non commodo nibh, a tincidunt mi.
  "
)
article.image.attach(io: File.open("./db/fixtures/article3.jpg"), filename: "article3.jpg" )
article.save!
article = Article.new(
  user_id: user3.id,
  title: "The manner of Japanese cuisine",
  country_id: 32,
  category_id: 9,
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris efficitur nisl ac eros convallis, vitae sodales diam gravida. Etiam tincidunt erat libero, sit amet efficitur ipsum ornare in. Vivamus non lorem eget leo feugiat lobortis nec a quam. Duis ut blandit risus, at suscipit enim. Maecenas vehicula varius est, non tempus est bibendum sed. Ut ut tortor ipsum. Phasellus ac sapien nulla. Suspendisse dictum ut erat vitae faucibus. Duis ac pharetra orci. Proin consectetur et mauris id congue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aenean commodo sem at velit vehicula, in facilisis quam tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin venenatis tortor vitae eros cursus facilisis. Nulla nulla nulla, venenatis in tellus sit amet, accumsan hendrerit massa. Vestibulum maximus nunc sit amet quam maximus, in aliquam quam tristique.

  Suspendisse potenti. Donec vehicula ante et ante porta, nec iaculis massa rutrum. Pellentesque placerat ipsum id convallis viverra. Morbi porttitor vehicula turpis, eget posuere magna tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed mollis erat a enim eleifend dapibus. Donec malesuada neque vel sem vestibulum accumsan. Aliquam ut cursus nisl. Nulla facilisi. Nam fringilla nibh quis lectus gravida fringilla. Nullam risus mi, convallis vel sem a, aliquam tempor felis.
  
  Sed eget ex et lacus placerat fringilla. Vestibulum id tristique turpis. Aliquam erat volutpat. Aenean ac placerat leo, eget congue mauris. Integer mattis, elit et condimentum porta, nunc leo laoreet erat, et tempus nulla ante ut ex. Proin fringilla sagittis ex, at tristique erat faucibus id. Vestibulum luctus, leo eu iaculis accumsan, eros ipsum auctor tellus, sed tempor odio nulla sed eros. Integer at sapien ligula. Fusce venenatis fringilla rhoncus.
  
  Vivamus eget leo pretium, ultrices nisl quis, rutrum elit. Pellentesque gravida pellentesque nibh, vel sollicitudin enim varius ac. Cras tristique consequat nisl, eu congue urna tempus non. Duis auctor fringilla orci iaculis bibendum. Aenean in commodo nunc, sed bibendum urna. Vestibulum blandit ut justo sit amet laoreet. Nullam nec tellus sagittis, vestibulum ligula ornare, dictum metus. Aliquam tincidunt et lorem a mollis. Etiam scelerisque odio porttitor ex ullamcorper hendrerit. Phasellus ac eros sed enim commodo cursus eget vulputate dui. Donec et egestas justo. Maecenas rutrum eros accumsan lectus porta elementum. Suspendisse consectetur ut est vel efficitur.
  
  Maecenas ultricies nunc sapien. Nulla vulputate fermentum purus a pretium. Proin porttitor maximus auctor. Morbi facilisis ex eget lacinia lacinia. In rhoncus nunc et varius dictum. Nam feugiat vel purus sit amet congue. Suspendisse a sem ac mauris tincidunt viverra. Duis blandit nec leo eu posuere. Mauris pharetra, ligula ut fermentum porta, massa ligula rutrum ex, ut porta magna mauris eget quam. Maecenas iaculis egestas ligula ut rhoncus. Maecenas viverra elit sem, eget vehicula ex ullamcorper egestas. Quisque vel lectus libero. Curabitur lacus ex, venenatis laoreet elementum vel, gravida eu lorem. Vestibulum non commodo nibh, a tincidunt mi.
  "
)
article.image.attach(io: File.open("./db/fixtures/article2.jpg"), filename: "article2.jpg" )
article.save!

article = Article.new(
  user_id: user4.id,
  title: "Best Takoyaki restaurant in Osaka",
  country_id: 32,
  category_id: 9,
  content: "Here is best Takoyaki pkace for me.
  
  Abeno Takoyaki Yamachan (Tennoji Area; budget)
  Located in the Tennoji and Abeno districts, takoyaki purveyor Yamachan is one of the most famous and highly-rated in its genre, and for good reason - their octopus balls are just some of the most delicious ones around. A must-visit when you’re in the area.

  Takoya Dotonbori Kukuru (Minami; budget)
  Dotonbori has several great takoyaki stalls to choose from, and Takoya Dotonbori Kukuru is super popular with lovers of this street food. What’s so great about them? Order their “bikkuri takoyaki” or “Surprise Takoyaki” to find out!
  
  TAKOPA (Takoyaki Park)（改称） (Osaka Bay; budget)
  Visiting Universal Studios Japan and craving takoyaki? Never fear - TAKOPA (Takoyaki Park)（改称）in Universal City Walk. You can sample your way through five of Osaka’s best shops under a single roof. Efficient and tasty!
  
  Takohachi (Tennoji Area; budget)
  For a twist on the usual takoyaki, head over to Takohachi in Tennoji and eat some akashiyaki instead. It’s similar to takoyaki, but is dipped in a light, delicious dashi broth instead. Great for those who want to try a lighter style of this snack instead.
  
  Takoyaki Doraku Wanaka (Minami; budget)
  Takoyaki Doraku Wanaka’s takoyaki is another favourite with Osakans. They have several branches across the city from Namba to Nippombashi, but we like the Sennichimae stall - the takoyaki is fabulous, and you can have it for breakfast on the weekends, in true Osaka binge-eating fashion.
  
  Kougaryu (Minami; budget)
  Shopping in Shinsaibashi but need a break? Grab some takoyaki from famed shop Kougaryu in Amerikamura. Not only is the takoyaki fabulous, there’s a wealth of intriguing toppings to choose from. Why not try them all?
  
  Takoyaki Juhachiban (Minami; budget)
  Visitors to Dotonbori are spoilt for choice when it comes to food, but if you have to choose just one takoyaki stall here, make it Takoyaki Juhachiban. These octopus balls contain several surprise ingredients that take them to the next level of deliciousness.
  
  Hanadako (Kita; budget)
  If you’re wandering around Shin-Umeda Shokudogai and wondering what to eat, Hanadako is an excellent choice. They nearly always have locals lining up for a taste of their famous negi-mayo takoyaki! Don’t worry if there’s a line, though: service is fast and efficient."
)
article.image.attach(io: File.open("./db/fixtures/article1.jpg"), filename: "article1.jpg" )
article.save!

article = Article.new(
  user_id: user5.id,
  title: "My Day in Tokyo",
  country_id: 32,
  category_id: 2,
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris efficitur nisl ac eros convallis, vitae sodales diam gravida. Etiam tincidunt erat libero, sit amet efficitur ipsum ornare in. Vivamus non lorem eget leo feugiat lobortis nec a quam. Duis ut blandit risus, at suscipit enim. Maecenas vehicula varius est, non tempus est bibendum sed. Ut ut tortor ipsum. Phasellus ac sapien nulla. Suspendisse dictum ut erat vitae faucibus. Duis ac pharetra orci. Proin consectetur et mauris id congue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aenean commodo sem at velit vehicula, in facilisis quam tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin venenatis tortor vitae eros cursus facilisis. Nulla nulla nulla, venenatis in tellus sit amet, accumsan hendrerit massa. Vestibulum maximus nunc sit amet quam maximus, in aliquam quam tristique.

  Suspendisse potenti. Donec vehicula ante et ante porta, nec iaculis massa rutrum. Pellentesque placerat ipsum id convallis viverra. Morbi porttitor vehicula turpis, eget posuere magna tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed mollis erat a enim eleifend dapibus. Donec malesuada neque vel sem vestibulum accumsan. Aliquam ut cursus nisl. Nulla facilisi. Nam fringilla nibh quis lectus gravida fringilla. Nullam risus mi, convallis vel sem a, aliquam tempor felis.
  
  Sed eget ex et lacus placerat fringilla. Vestibulum id tristique turpis. Aliquam erat volutpat. Aenean ac placerat leo, eget congue mauris. Integer mattis, elit et condimentum porta, nunc leo laoreet erat, et tempus nulla ante ut ex. Proin fringilla sagittis ex, at tristique erat faucibus id. Vestibulum luctus, leo eu iaculis accumsan, eros ipsum auctor tellus, sed tempor odio nulla sed eros. Integer at sapien ligula. Fusce venenatis fringilla rhoncus.
  
  Vivamus eget leo pretium, ultrices nisl quis, rutrum elit. Pellentesque gravida pellentesque nibh, vel sollicitudin enim varius ac. Cras tristique consequat nisl, eu congue urna tempus non. Duis auctor fringilla orci iaculis bibendum. Aenean in commodo nunc, sed bibendum urna. Vestibulum blandit ut justo sit amet laoreet. Nullam nec tellus sagittis, vestibulum ligula ornare, dictum metus. Aliquam tincidunt et lorem a mollis. Etiam scelerisque odio porttitor ex ullamcorper hendrerit. Phasellus ac eros sed enim commodo cursus eget vulputate dui. Donec et egestas justo. Maecenas rutrum eros accumsan lectus porta elementum. Suspendisse consectetur ut est vel efficitur."
)
article.image.attach(io: File.open("./db/fixtures/article5.jpg"), filename: "article5.jpg" )
article.save!

article = Article.new(
  user_id: user6.id,
  title: "Recommended super market in Fukuoka",
  country_id: 32,
  category_id: 2,
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris efficitur nisl ac eros convallis, vitae sodales diam gravida. Etiam tincidunt erat libero, sit amet efficitur ipsum ornare in. Vivamus non lorem eget leo feugiat lobortis nec a quam. Duis ut blandit risus, at suscipit enim. Maecenas vehicula varius est, non tempus est bibendum sed. Ut ut tortor ipsum. Phasellus ac sapien nulla. Suspendisse dictum ut erat vitae faucibus. Duis ac pharetra orci. Proin consectetur et mauris id congue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aenean commodo sem at velit vehicula, in facilisis quam tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin venenatis tortor vitae eros cursus facilisis. Nulla nulla nulla, venenatis in tellus sit amet, accumsan hendrerit massa. Vestibulum maximus nunc sit amet quam maximus, in aliquam quam tristique.

  Suspendisse potenti. Donec vehicula ante et ante porta, nec iaculis massa rutrum. Pellentesque placerat ipsum id convallis viverra. Morbi porttitor vehicula turpis, eget posuere magna tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed mollis erat a enim eleifend dapibus. Donec malesuada neque vel sem vestibulum accumsan. Aliquam ut cursus nisl. Nulla facilisi. Nam fringilla nibh quis lectus gravida fringilla. Nullam risus mi, convallis vel sem a, aliquam tempor felis.
  
  Sed eget ex et lacus placerat fringilla. Vestibulum id tristique turpis. Aliquam erat volutpat. Aenean ac placerat leo, eget congue mauris. Integer mattis, elit et condimentum porta, nunc leo laoreet erat, et tempus nulla ante ut ex. Proin fringilla sagittis ex, at tristique erat faucibus id. Vestibulum luctus, leo eu iaculis accumsan, eros ipsum auctor tellus, sed tempor odio nulla sed eros. Integer at sapien ligula. Fusce venenatis fringilla rhoncus.
  
  Vivamus eget leo pretium, ultrices nisl quis, rutrum elit. Pellentesque gravida pellentesque nibh, vel sollicitudin enim varius ac. Cras tristique consequat nisl, eu congue urna tempus non. Duis auctor fringilla orci iaculis bibendum. Aenean in commodo nunc, sed bibendum urna. Vestibulum blandit ut justo sit amet laoreet. Nullam nec tellus sagittis, vestibulum ligula ornare, dictum metus. Aliquam tincidunt et lorem a mollis. Etiam scelerisque odio porttitor ex ullamcorper hendrerit. Phasellus ac eros sed enim commodo cursus eget vulputate dui. Donec et egestas justo. Maecenas rutrum eros accumsan lectus porta elementum. Suspendisse consectetur ut est vel efficitur."
)
article.image.attach(io: File.open("./db/fixtures/article6.jpg"), filename: "article6.jpg" )
article.save!

article = Article.new(
  user_id: user7.id,
  title: "The places you can consult about your life in Japan",
  country_id: 32,
  category_id: 2,
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris efficitur nisl ac eros convallis, vitae sodales diam gravida. Etiam tincidunt erat libero, sit amet efficitur ipsum ornare in. Vivamus non lorem eget leo feugiat lobortis nec a quam. Duis ut blandit risus, at suscipit enim. Maecenas vehicula varius est, non tempus est bibendum sed. Ut ut tortor ipsum. Phasellus ac sapien nulla. Suspendisse dictum ut erat vitae faucibus. Duis ac pharetra orci. Proin consectetur et mauris id congue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aenean commodo sem at velit vehicula, in facilisis quam tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin venenatis tortor vitae eros cursus facilisis. Nulla nulla nulla, venenatis in tellus sit amet, accumsan hendrerit massa. Vestibulum maximus nunc sit amet quam maximus, in aliquam quam tristique.

  Suspendisse potenti. Donec vehicula ante et ante porta, nec iaculis massa rutrum. Pellentesque placerat ipsum id convallis viverra. Morbi porttitor vehicula turpis, eget posuere magna tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed mollis erat a enim eleifend dapibus. Donec malesuada neque vel sem vestibulum accumsan. Aliquam ut cursus nisl. Nulla facilisi. Nam fringilla nibh quis lectus gravida fringilla. Nullam risus mi, convallis vel sem a, aliquam tempor felis.
  
  Sed eget ex et lacus placerat fringilla. Vestibulum id tristique turpis. Aliquam erat volutpat. Aenean ac placerat leo, eget congue mauris. Integer mattis, elit et condimentum porta, nunc leo laoreet erat, et tempus nulla ante ut ex. Proin fringilla sagittis ex, at tristique erat faucibus id. Vestibulum luctus, leo eu iaculis accumsan, eros ipsum auctor tellus, sed tempor odio nulla sed eros. Integer at sapien ligula. Fusce venenatis fringilla rhoncus.
  
  Vivamus eget leo pretium, ultrices nisl quis, rutrum elit. Pellentesque gravida pellentesque nibh, vel sollicitudin enim varius ac. Cras tristique consequat nisl, eu congue urna tempus non. Duis auctor fringilla orci iaculis bibendum. Aenean in commodo nunc, sed bibendum urna. Vestibulum blandit ut justo sit amet laoreet. Nullam nec tellus sagittis, vestibulum ligula ornare, dictum metus. Aliquam tincidunt et lorem a mollis. Etiam scelerisque odio porttitor ex ullamcorper hendrerit. Phasellus ac eros sed enim commodo cursus eget vulputate dui. Donec et egestas justo. Maecenas rutrum eros accumsan lectus porta elementum. Suspendisse consectetur ut est vel efficitur."
)
article.image.attach(io: File.open("./db/fixtures/article7.jpg"), filename: "article7.jpg" )
article.save!

article = Article.new(
  user_id: user8.id,
  title: "How to find the place to work in Tokyo",
  country_id: 32,
  category_id: 2,
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris efficitur nisl ac eros convallis, vitae sodales diam gravida. Etiam tincidunt erat libero, sit amet efficitur ipsum ornare in. Vivamus non lorem eget leo feugiat lobortis nec a quam. Duis ut blandit risus, at suscipit enim. Maecenas vehicula varius est, non tempus est bibendum sed. Ut ut tortor ipsum. Phasellus ac sapien nulla. Suspendisse dictum ut erat vitae faucibus. Duis ac pharetra orci. Proin consectetur et mauris id congue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aenean commodo sem at velit vehicula, in facilisis quam tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin venenatis tortor vitae eros cursus facilisis. Nulla nulla nulla, venenatis in tellus sit amet, accumsan hendrerit massa. Vestibulum maximus nunc sit amet quam maximus, in aliquam quam tristique.

  Suspendisse potenti. Donec vehicula ante et ante porta, nec iaculis massa rutrum. Pellentesque placerat ipsum id convallis viverra. Morbi porttitor vehicula turpis, eget posuere magna tempor id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed mollis erat a enim eleifend dapibus. Donec malesuada neque vel sem vestibulum accumsan. Aliquam ut cursus nisl. Nulla facilisi. Nam fringilla nibh quis lectus gravida fringilla. Nullam risus mi, convallis vel sem a, aliquam tempor felis.
  
  Sed eget ex et lacus placerat fringilla. Vestibulum id tristique turpis. Aliquam erat volutpat. Aenean ac placerat leo, eget congue mauris. Integer mattis, elit et condimentum porta, nunc leo laoreet erat, et tempus nulla ante ut ex. Proin fringilla sagittis ex, at tristique erat faucibus id. Vestibulum luctus, leo eu iaculis accumsan, eros ipsum auctor tellus, sed tempor odio nulla sed eros. Integer at sapien ligula. Fusce venenatis fringilla rhoncus.
  
  Vivamus eget leo pretium, ultrices nisl quis, rutrum elit. Pellentesque gravida pellentesque nibh, vel sollicitudin enim varius ac. Cras tristique consequat nisl, eu congue urna tempus non. Duis auctor fringilla orci iaculis bibendum. Aenean in commodo nunc, sed bibendum urna. Vestibulum blandit ut justo sit amet laoreet. Nullam nec tellus sagittis, vestibulum ligula ornare, dictum metus. Aliquam tincidunt et lorem a mollis. Etiam scelerisque odio porttitor ex ullamcorper hendrerit. Phasellus ac eros sed enim commodo cursus eget vulputate dui. Donec et egestas justo. Maecenas rutrum eros accumsan lectus porta elementum. Suspendisse consectetur ut est vel efficitur."
)
article.image.attach(io: File.open("./db/fixtures/article8.jpg"), filename: "article8.jpg" )
article.save!

article = Article.new(
  user_id: user11.id,
  title: "Great place for hiking in Kyoto",
  country_id: 32,
  category_id: 8,
  content: "Most people think of golden temples like Kinkakuji or a line of red torii gates at Fushimi-Inari Shrine when visiting Kyoto. Still, another beautiful and tranquil area of Kyoto is the bamboo forest and gardens located next to Tenryu-ji Temple.

  “I watched a YouTube video of a girl dressed in a kimono walking through the bamboo forest, and I knew it was something I definitely had to do myself,” admits Fern. An interior decorator living in Chicago, she headed to Kyoto with her boyfriend in hopes to rent a kimono for the day and walk the streets of Kyoto as well as stroll through the pathway surrounded by sprawling bamboo trees that soar up to the sky creating an alluring green glow.
  
  “We really enjoyed our experience walking around the entire Arashiyama area and especially the bamboo forest. It was a weekday in the offseason, so it wasn’t as busy,” advising people who want to visit to avoid the major rush periods when tourists overrun the area.
  "
)
article.image.attach(io: File.open("./db/fixtures/article9.jpg"), filename: "article9.jpg" )
article.save!

articles = Article.all
article1, article2, article3, article4, article5, article6, article7, article8, article9 = articles

#記事コメント
Comment.create!(
  user_id: user2.id,
  article_id: article1.id,
  content: "Great article! Thank you for sharing:)"
)
Comment.create!(
  user_id: user3.id,
  article_id: article2.id,
  content: "Great article! Thank you for sharing:)"
)
Comment.create!(
  user_id: user4.id,
  article_id: article3.id,
  content: "Great article! Thank you for sharing:)"
)
Comment.create!(
  user_id: user5.id,
  article_id: article4.id,
  content: "Great article! Thank you for sharing:)"
)
Comment.create!(
  user_id: user6.id,
  article_id: article5.id,
  content: "Great article! Thank you for sharing:)"
)
Comment.create!(
  user_id: user7.id,
  article_id: article6.id,
  content: "Great article! Thank you for sharing:)"
)
Comment.create!(
  user_id: user8.id,
  article_id: article7.id,
  content: "Great article! Thank you for sharing:)"
)
Comment.create!(
  user_id: user9.id,
  article_id: article8.id,
  content: "Great article! Thank you for sharing:)"
)

Comment.create!(
  user_id: user10.id,
  article_id: article9.id,
  content: "Great article! Thank you for sharing:)"
)

#クエスチョン
question = Question.create(
  user_id: user1.id,
  title: "Is it difficult to get driver's lisence in Japan?",
  country_id: 32,
  category_id: 2,
  status_id: 1,
  content: Faker::Lorem.characters
)
question = Question.create(
  user_id: user11.id,
  title: "Where is recommended place to visit in Tokushima?",
  country_id: 32,
  category_id: 8,
  status_id: 2,
  content: Faker::Lorem.characters
)
question = Question.create(
  user_id: user3.id,
  title: "Is there the place to play baseball in Tokyo?",
  country_id: 32,
  category_id: 12,
  status_id: 1,
  content: Faker::Lorem.characters
)
question = Question.create(
  user_id: user4.id,
  title: "Does Japan has health insuarance for foreigner?",
  country_id: 32,
  category_id: 15,
  status_id: 1,
  content: Faker::Lorem.characters
)

questions = Question.all
question1, question2, question3, question4 = questions

#アンサー
Answer.create!(
  user_id: user3.id,
  question_id: question2.id,
  content: "You should join Awa-odori which held in middle of August. It's one of most famous traditional dance festival."
)



