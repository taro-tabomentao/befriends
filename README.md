![title](https://gyazo.com/b949190c76f5b3091e867c60ddbf3600.png)

Befriendsとは、世界各地のローカル情報に特化したソーシャルメディアサービス。

<br> 

# アプリケーション概要
世界各地に住む地元の人達と交流したり、その人達の発信する地元の情報をチェックすることが出来るサービス。  
Befriendsの言葉の意味には「友達になる、（〜を）助ける」（[Weblio英和辞典より](https://ejje.weblio.jp/content/befriend)）という意味があり、移住する人や旅行する人たちに、現地に住む頼れる友人を作ってもらったり、世界各地の人たちと助け合い、リアルな現地情報を交換し、生活や旅行に役立てられるサービスを目指している。これを実現するために、主に下記三つの機能で構成されている。
- イベント機能
  - イベントを投稿し、世界各地の人たちに参加してもらったり、誰かが開催するイベントに参加することで世界各地に交流の輪を広げ、友人を作れる機能。
- 記事機能
  - 自分の地元に関する投稿をしたり、興味のある場所に関する投稿をチェックすることが出来る機能。
- Q&A機能
  - 現地に住む人たちに質問をし、回答してもらう機能。自分の地元に関する質問に対して回答することも出来る。

<br>

# 本番環境
http://befriends.xyz/  
トップページ右上の"Guest Log In"ボタンからゲストユーザーとしてログインすることが出来ます。

<br>

## 基本操作概要
- ゲストログイン、もしくはサインアップを行うことで、下記機能を実行可能。
  - イベント機能関連：新規投稿、既存イベントへのコメント、イベントへの参加。
  - 記事機能：新規投稿、記事に対するコメント投稿
  - Q&A機能：新規質問投稿、質問に対する回答投稿
- マイページから自分が投稿、参加したイベント、投稿した記事、質問の一覧を管理することが出来る。

<br>

# 開発背景
これから自分の知らない土地に移住する人の不安を少しでも軽減できたら、という想いでこのアプリを開発しました。

私自身、米国に移住した経験があり、言葉も文化も違う国で、本当に生活していけるのだろうかという不安を持っていました。  
移住後も分からないことばかりで、しかも知り合いもいない孤独感から外に出るのも億劫になり、家に閉じこもってしまうことも有りました。ただその環境は現地に頼れる友達を作ることで一変しました。
現地の友達を作ることで、一緒に遊んで盛り上がったり、分からないことや現地の有益な情報を教えてもらったりし、段々と前向きに生活を楽しめるようになりました。このことから現地の生活に慣れるためには、現地に友達を作ることが一番の解決方法だと感じました。  
このアプリはそういった経験から、現地の友達を作り、不安を少しでも取り除き、充実した生活を送れるようにという想いから開発しました。

また海外旅行者や海外に興味のある人たちにも、現地の人たちと交流したり、現地のリアルな情報を得られるツールとして活用頂きたいと考えております。

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
- ゲストログイン機能
- フォロー機能
- グッドボタン機能
- 多言語対応機能

<br>

# 実装した機能についてのGIFと説明
## 国選択機能
- トップページから興味の有る国を選択し、その国に関連付けられた投稿一覧を確認出来る。

![demo](https://i.gyazo.com/1026d3c8d2c6f5bd52434cdc1697968d.gif)

<br>

## 国別ページ
- 各国に関連付いたイベント、記事、質問投稿一覧を確認出来る。
- ユーザービリティ向上のため、①タブ選択により非同期でページ切り替え②カルーセルスライダーを使った投稿一覧表示③検索機能を実装。

![demo](https://i.gyazo.com/272b68efda3f0fb1e030bd4ad6cf0cac.gif)

<br>

## ユーザー管理機能
- ユーザー新規登録、ログイン、ログアウト、登録内容編集、マイページ機能を実装。
- ログインしていない時はグローバルナビゲーションにSign up（新規登録）とLog In（ログイン）が表示され、ボタンを押すと各機能画面に移動できる。
- ログイン時は名前とLog out（ログアウト）ボタンが表示され、名前をクリックするとマイページに移動でき、自分に関連する投稿と、プロフィール、フォロワーが表示される。
- プロフィール画面から登録内容の編集を行うことが出来る。

![demo](https://i.gyazo.com/22b0bed4a6a5f9e030b0539edfb4f326.gif)

<br>

## フォロー機能
- 他ユーザーのページにある、Followボタンを押すと、フォロー出来る。
- フォロー後、Ajaxにより、Followingボタンに変わる。それを押すと、フォローを外せる。
- マイページから、フォローしているユーザー、フォローされているユーザーを確認できる。

![demo](https://i.gyazo.com/45dbaea1461e8662b93921c4360a389a.gif)

## イベント、記事、Q&A機能
- 国別ページ、もしくはマイページから新規投稿を行うことが出来る。（本項目のデモはイベントに関するものだが、記事、Q&Aについても操作、ページ構成はほぼ同じ）

![demo](https://i.gyazo.com/4722f0f1a1d3997994598b45f6e97ebd.gif)

- 投稿一覧から投稿をクリックすると、投稿の詳細が確認出来る。
- 詳細画面からイベントに参加することが出来る。
- 投稿に対して、コメントすることが出来る
- 自分が作ったイベントは編集、削除ができる

![demo](https://i.gyazo.com/21b7d68bae133e131aac4b90a5d15609.gif)

<br>

## レスポンシブデザイン
![demo](https://i.gyazo.com/4c0367bee547e6022684d6e209457944.gif)

- スマホやタブレットなど画面の小さい媒体でも快適に見られるように実装。
- Gifが見にくい場合はこちらの[mp4ファイル](https://i.gyazo.com/4c0367bee547e6022684d6e209457944.mp4)をクリック

<br>

# 実装予定の機能
- グッドボタン機能
- 多言語対応機能

<br>

# 使用技術等
- バックエンド：Ruby 2.6.5
- フレームワーク：Ruby on Rails 6.0.3.3
- テスト：RSpec
- 静的コード解析：Rubocop
- マークアップ：HTML、CSS
- フロントエンド：JavaScript
- データベース
  - (開発環境) MySQL
  - (本番環境) MariaDB
- インフラ：AWS (EC2,S3,Route53)
- Webサーバー：Nginx
- アプリケーションサーバー
  - (開発環境) Puma
  - (本番環境) Unicorn
- ソースコード管理：GitHub

# データベース設計
![ER図](https://i.gyazo.com/27172d76cc8bc70adff3ecb922d5e2e0.png)

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
- has_many :relationships

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

## follow_relationships テーブル

| Column        | Type       | Options                                        |
| ------------- | ---------- | ---------------------------------------------- |
| follower      | references | null: false, foreign_key: { to_table: :users } |
| following     | references | null: false, foreign_key: { to_table: :users } |

### Association

- belongs_to :user


