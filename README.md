![title](https://gyazo.com/b949190c76f5b3091e867c60ddbf3600.png)

Befriendsとは、世界各地のローカル情報に特化したソーシャルメディアサービス。

<br> 

# アプリケーション概要
世界各地に住む地元の人達と交流したり、その人達の発信する地元の情報をチェックすることが出来るサービス。
Befriendsの言葉の意味には「友達になる、（〜を）助ける」（[Weblio英和辞典より](https://ejje.weblio.jp/content/befriend)）という意味があり、移住する人や旅行する人たちに、現地に住む頼れる友人を作ってもらったり、世界各地の人たちと助け合い、リアルな現地情報を交換し、生活や旅行に役立てられるサービスを目指している。これを実現するために、主に下記三つの機能で構成されている。
- イベント機能
  - イベントを投稿し、世界各地の人たちに参加してもらったり、誰かが開催するイベントに参加することで世界各地に交流の輪を広げ、友人を作れる機能。
- 記事機能
  - 自分の地元に関する投稿をしたり、興味のある場所に関する投稿をチェックすることが出来る機能。
- Q&A機能
  - 現地に住む人たちに質問をし、回答してもらう機能。自分の地元に関する質問に対して回答することも出来る。

<br>

# URL
https://befriends-28755.herokuapp.com/

<br>

# 利用方法

<strong>現環境においては、Japanページへデータを格納をしておりますので、Japanページにて操作を行って頂けますようお願いいたします。<br>
※トップページ赤枠部をクリックするとJapanページに遷移いたします。</strong>

![Link](https://gyazo.com/ab8aff8a34fe4551ef86bcef6e1f2927.jpg)

## 基本操作概要
- ユーザー登録なしにサイトの閲覧可能。
- ユーザー登録を行うことで、下記機能を
  - イベント機能関連：新規投稿、既存イベントへのコメント、イベントへの参加。
  - 記事機能：新規投稿、記事に対するコメント投稿
  - Q&A機能：新規質問投稿、質問に対する回答投稿
- マイページから自分が投稿、参加したイベント、投稿した記事、質問の一覧を管理することが出来る。

## Basic認証
ユーザー名: admin  
パスワード: password
## テスト用ログインアカウント
Eメール: test@mail.com  
パスワード：password

<br>

# 目指した課題解決
- 知らない国で住み始める際に持つ不安（常識が通用しない、言葉の壁、孤独感など）。
  - 現地に友達がいることで、上記不安は軽減される。
  - 現地情報を得ることで、移住後の生活を想像したり、不安点を潰しておくことが出来る。
- 旅行はガイドブックだけではなく、地元の人がオススメするものを知りたいという要望。
  - 地元に住む人たちが発信するリアルな声を聞き、旅行を充実させることが出来る。
  - 例）現地の人が通うローカルレストランやローカルスポット
- 海外の文化や言葉に興味があるが、現地では外国人と交流する機会が少ないという問題。
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
## 国選択機能
- トップページから興味の有る国を選択し、その国に関連付けられた投稿一覧を確認出来る。

![demo](https://i.gyazo.com/1026d3c8d2c6f5bd52434cdc1697968d.gif)

<br>

## 国別ページ
- 各国に関連付いたイベント、記事、質問投稿一覧を確認出来る。
- ユーザービリティ向上のため、①タブ選択により非同期でページ切り替え②カルーセルスライダーを使った投稿一覧表示③検索機能を実装した。

![demo](https://i.gyazo.com/272b68efda3f0fb1e030bd4ad6cf0cac.gif)

<br>

## ユーザー管理機能
- ユーザー新規登録、ログイン、ログアウト、登録内容編集、マイページ機能を実装。
- ログインしていない時はグローバルナビゲーションにSign up（新規登録）とLog In（ログイン）が表示され、ボタンを押すと各機能画面に移動できる。

![demo](https://i.gyazo.com/f23e3f9dcc8c8135629e71c3abb47a06.gif)


- ログイン時は名前とLog out（ログアウト）ボタンが表示され、名前をクリックするとマイページに移動でき、自分に関連する投稿と、プロフィールが表示される。
- プロフィール画面から登録内容の編集を行うことが出来る。

![demo](https://i.gyazo.com/4421455cb4b77d69d38fa082450855bb.gif)

<br>

## イベント、記事、Q&A機能
- 国別ページ、もしくはマイページから新規投稿を行うことが出来る。（本項目のデモはイベントに関するものだが、記事、Q&Aについても操作、ページ構成はほぼ同じ）

![demo](https://i.gyazo.com/4722f0f1a1d3997994598b45f6e97ebd.gif)

- 投稿一覧から投稿をクリックすると、投稿の詳細が確認出来る。
- 詳細画面からイベントに参加することが出来る。

![demo](https://i.gyazo.com/21b7d68bae133e131aac4b90a5d15609.gif)

- 投稿に対して、コメントすることが出来る
- 自分が作ったイベントは編集、削除ができる

![demo](https://i.gyazo.com/1caaeca82580ced32123530bb30a4539.gif)

<br>

## レスポンシブデザイン
![demo](https://i.gyazo.com/4dbec90cbd337ef47e2c4fbdfff8a4b1.gif)

<br>

# 実装予定の機能
- フレンド機能
- グッドボタン機能
- 多言語対応機能

<br>

# バージョン
Ruby 2.6.5
Ruby on Rails 6.0.3.3


# データベース設計
![ER図](https://gyazo.com/f63e6a8b11d112515bc5a562b8c793e3.png)

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


