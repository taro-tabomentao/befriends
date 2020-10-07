# アプリケーション名
Befriends

<br> 

# アプリケーション概要
世界各地のローカル情報に特化したソーシャルメディアサービス。<br>
Befriendsは「友達になる、（〜を）助ける」（[Weblio英和辞典より](https://ejje.weblio.jp/content/befriend)）という意味があり、イベント機能を使った交流を通して、友達になったり、記事、質問投稿機能を通して、世界各地に住む人たちを助ける（日本のローカル情報を提供）、助けてもらう（世界各地のローカル情報を取得）ことが出来る。

<br>

# URL
https://befriends-28755.herokuapp.com/

<br>

# テスト用アカウント
## Basic認証
- ユーザー名：admin
- パスワード：password

<br>

## サイト内テストアカウント情報
- ユーザー名：user@gmail.com
- パスワード：password123

<br>

# 利用方法
- 各機能を利用するために、ユーザー登録を行う。
  - ユーザー登録後、新規イベント、記事、質問投稿が出来る。
  - 既存のイベントに対しては、参加することが出来る。
  - 既存の記事に対しては、記事に対するコメント、質問に対しては、質問に対する答えを投稿することが出来る。
  - マイページで自分が投稿、参加したイベント、投稿した記事、質問の一覧を管理出来る。 
- ユーザー登録なしに投稿を閲覧することが出来る。
- <strong>今回はJapanページに投稿を行っているので、Japanページにて操作を行って頂けますようお願いいたします。</strong>

<br>

# 目指した課題解決
- 知らない国や土地で住み始める際に持つ不安（言葉も文化も違う場所で本当に生活していけるのか、）
  - 現地に住む友達（助けてもらえる友達）がいることで、不安は軽くなる
  - 現地の情報を得ることで、移住後の生活を想像したり、不安点を潰しておくことが出来る。
- 旅行はガイドブックだけではなく、現地の人のオススメを知りたい。
  - 現地に住む人たちのリアルな声を聞き、旅行を充実させることが出来る。
  - 例）現地の人が通うローカルレストラン
- 海外の文化や言葉を学びたいが、外国人と交流する機会が少ない。
  - イベント機能を使い、世界中のどこからでも交流することが出来る
  - 例）日本文化（特にアニメ）が好きなので、日本人とイベントで交流

<br>

# 洗い出した要件
- 国管理機能（一覧表示、詳細表示）
- イベント管理機能（一覧表示、新規投稿、詳細表示、編集、削除）
- イベント参加機能
- 記事管理機能（一覧表示、新規投稿、詳細表示、編集、削除）
- コメント管理機能（一覧表示、新規投稿、編集、削除）
- Q&A管理機能（一覧表示、新規投稿、詳細表示、編集、削除）
- アンサー管理機能（一覧表示、新規投稿、編集、削除）
- ユーザー管理機能（新規登録、登録内容編集、ログイン、ログアウト、マイページ）
- レスポンシブデザイン
- フレンド機能
- カテゴリ別表示機能
- グッドボタン機能
- 人気順表示機能
- 検索機能
- ビデオ通話機能
- 翻訳機能
- 地方別管理機能

<br>

# 実装した機能についてのGIFと説明
トップページ（国一覧表示）→国別ページへ移動
![demo](https://i.gyazo.com/7cf6268c4872f734f3bb01b709808516.gif)

- トップページから各国別ページに移動できる。（今回はJapanページへ移動）
- 国別ページにはイベント、記事、Q&Aタブが有り、そそれぞれのタブをクリックすることで、その国に関連付いた投稿一覧を見ることが出来る。
- [元データ（.mp4）](https://i.gyazo.com/7cf6268c4872f734f3bb01b709808516.mp4)  

<br>

ユーザー管理機能
![demo](https://i.gyazo.com/228f13904e8aaf61f2462ec904f54b4a.gif)

- ログインしていない時は新規登録、ログインボタンがグローバルナビゲーションに表示され、それぞれの画面に移動できる。
- ログイン後は自分の名前とログアウトボタンが表示され、名前をクリックするとマイページに移動できる。
- マイページには自分に関連する投稿と、プロフィールが表示される。
- [元データ（.mp4）](https://i.gyazo.com/228f13904e8aaf61f2462ec904f54b4a.mp4) 

<br>

イベント、記事、Q&A管理機能
![demo](https://i.gyazo.com/0df727aa5e0e31c1f5e5904b1758a62d.gif)

- 各国ページかマイページのリンクからイベント、記事、Q&Aの新規投稿ができる。(今回のデモはイベント投稿機能。)
- 投稿一覧から投稿をクリックすると投稿詳細画面に移動できる。
- 自分が投稿したものは編集、削除を行うことが出来る。
- [元データ（.mp4）](https://i.gyazo.com/0df727aa5e0e31c1f5e5904b1758a62d.mp4)

<br>

イベント参加、記事コメント、Q&A回答機能
![demo](https://i.gyazo.com/41aa4bc1bbea99a5301c1bc227f8404c.gif)

- イベントの詳細画面から、まだ参加していないイベントについては、参加するボタンをクリックすると参加できる。参加したイベントはマイページに表示される。
- 記事とQ&Aにはコメントを投稿することが出来る。
- [元データ（.mp4）](https://i.gyazo.com/41aa4bc1bbea99a5301c1bc227f8404c.mp4)

<br>

レスポンシブデザイン
![demo](https://i.gyazo.com/8a7eaeb0923a58e606187f014dcf7160.gif)

- スマートフォンなどの画面の小さいデバイスでも快適に操作するため、レスポンシブデザインとなっている。
- [元データ（.mp4）](https://i.gyazo.com/8a7eaeb0923a58e606187f014dcf7160.mp4)

<br>

# 実装予定の機能
- フレンド機能
- カテゴリ別表示機能
- グッドボタン機能
- 人気順表示機能
- 検索機能
- ビデオ通話機能
- 翻訳機能
- 地方別管理機能

<br>

# データベース設計
![ER図](https://gyazo.com/1fe937f28401c49f4e3a952de4bfb060.png)

<br>

## users テーブル

| Column           | Type       | Options                         |
| ---------------- | -------    | ------------------------------- |
| full_name        | string     | null: false                     |
| email            | string     | null: false                     |
| password         | string     | null: false                     |
| country_id       | integer    | null: false                     |
| gender_id        | integer    | null: false                     | 
| city             | string     | null: false                     |
| birthday         | date       | null: false                     |
| language         | string     |                                 |
| image            | -          | *Active Storage                 |

### Association

- has_many :articles
- has_many :comments
- has_many :questions
- has_many :answers
- has_many :events, through: :user_events
- has_many :user_events
- has_many :event_comments

<br>

## articles テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| country _id   | integer    | null: false                    |
| category_id   | integer    | null: false                    |
| title         | string     | null: false                    |
| content       | text       | null: false                    |
| image         | -          | *Active Storage                |

### Association

- belongs_to :user
- has_many :comments

<br>

## comments テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| article       | references | null: false, foreign_key: true |
| comment       | text       | null: false                    |

### Association

- belongs_to :user
- belongs_to :article

<br>

## questions テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| country_id    | integer    | null: false                    |
| category_id   | integer    | null: false                    |
| status_id     | integer    | null: false                    |
| title         | string     | null: false                    |
| text          | text       | null: false                    |

### Association

- belongs_to :user
- has_many :answers

<br>

## answers テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| question      | references | null: false, foreign_key: true |
| content       | text       | null: false                    |

### Association

- belongs_to :user
- belongs_to :question

<br>

## events テーブル
| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| title         | string     | null: false                    |
| country_id    | integer    | null: false                    |
| category_id   | integer    | null: false                    |
| start_time    | datetime   | null: false                    |
| end_time      | datetime   | null: false                    |
| online        | boolean    | null: false                    |
| place         | string     | null: false                    |
| content       | text       | null: false                    |
| image         | -          | Active Storage                 |

### Association

- has_many :users, through: :user_events
- has_many :user_events
- has_many :event_comments

<br>

## user_events テーブル
| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| event         | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :event

<br>

## event_comments テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| event         | references | null: false, foreign_key: true |
| comment       | text       | null: false                    |

### Association

- belongs_to :user
- belongs_to :comment

<br>

# ローカルでの動作方法
- Ruby 2.6.5
- Rails 6.0.3.3
