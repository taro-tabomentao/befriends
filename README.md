![title](https://gyazo.com/b949190c76f5b3091e867c60ddbf3600.png)

Befriendsとは、世界各地のローカル情報に特化したソーシャルメディアサービス。

<br> 

## アプリケーション概要
世界各地に住む地元の人達と交流したり、その人達の発信する地元の情報をチェックすることが出来るサービス。
Befriendsの言葉の意味には「友達になる、（〜を）助ける」（[Weblio英和辞典より](https://ejje.weblio.jp/content/befriend)）という意味があり、移住する人や旅行する人たちに、現地に住む頼れる友人を作ってもらったり、現地の人たちからのリアルな現地情報を取得し、生活、旅行に役立てられるサービスを目指している。これを実現するために、主に下記三つの機能で構成されている。
- イベント機能
  - 自分でイベントを設定し、世界各地の人たちに参加してもらったり、誰かが開催するイベントに参加することで世界各地に交流の輪を広げる。
- 記事機能
  - 自分の地元に関する投稿をしたり、興味のある場所に関する投稿をチェックすることが出来る。
- Q&A機能
  - 疑問を現地に住む人たちに聞いたり、逆に自分の地元に関する質問に回答出来る。

<br>

## URL
https://befriends-28755.herokuapp.com/

<br>

# 利用方法

<strong>現環境においては、Japanページに投稿を行っているので、Japanページにて操作を行って頂けますようお願いいたします。<br>
※トップページ赤枠部をクリックするとJapanページに遷移いたします。</strong>

![Link](https://gyazo.com/ab8aff8a34fe4551ef86bcef6e1f2927.jpg)

## 基本操作概要
- ユーザー登録なしにサイトの閲覧可能。
- ユーザー登録を行うことで、新規イベント投稿、ま既存イベントへのコメント、参加が出来る。また記事や質問の投稿、それに対するコメントや回答が出来る。
- マイページで自分が投稿、参加したイベント、投稿した記事、質問の一覧を管理出来る。

<br>

# 目指した課題解決
- 知らない国で住み始める際に持つ不安（常識が通用しない、言葉の壁、孤独感など）
  - 現地に友達がいることで、上記不安は軽減される
  - 現地情報を得ることで、移住後の生活を想像したり、不安点を潰しておくことが出来る。
- 旅行はガイドブックだけではなく、地元の人のオススメするものを知りたい。
  - 地元に住む人たちが発信するリアルな声を聞き、旅行を充実させることが出来る。
  - 例）現地の人が通うローカルレストランやローカルスポット
- 海外の文化や言葉を学びたいが、現地では外国人と交流する機会が少ない。
  - オンラインイベント機能を使い、世界中のどこからでも交流することが出来る
  - 例）日本文化（特にアニメ）が好きなので、日本人とオンラインイベントで交流したい

<br>

# 洗い出した要件
- 国別管理機能（一覧表示、詳細表示）
  - 国別にデータを管理し、ユーザーが調べたい国の情報を取得しやすくするため
- イベント管理機能（投稿、詳細表示、編集、削除）
- イベントに対するコメント投稿機能
- イベント参加機能
- 記事管理機能（投稿、詳細表示、編集、削除）
- 記事に対するコメント投稿機能
- 質問管理機能（投稿、詳細表示、編集、削除）
- 質問に対する回答投稿機能
- ユーザー管理機能（新規登録、登録内容編集、ログイン、ログアウト、マイページ）
- レスポンシブデザイン
- カテゴリ別表示機能
- 検索機能
- フレンド機能
- グッドボタン機能
- 多言語対応機能

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
- グッドボタン機能
- 多言語対応機能

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


# ローカルでの動作方法
- Ruby 2.6.5
- Rails 6.0.3.3
