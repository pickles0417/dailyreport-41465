# アプリケーション名
- 顧客管理システム

# アプリケーション概要
- 顧客情報と商談記録の作成・管理ができます。

# URL
- https://dailyreport-41465.onrender.com

# テスト用アカウント
- ・メール：test1@test.com
- ・パスワード：test1

# 利用方法
-

# 機能一覧
- ユーザー管理機能

- 顧客情報一覧機能
- 顧客情報投稿機能
- 顧客情報編集機能
- 顧客情報削除機能
- 顧客検索機能


# アプリケーションを作成した背景
- 前職で営業をしていた際、顧客や商談の情報などをメモ帳やエクセルを使って各個人で管理していました。会社として顧客の貴重な情報を全体で管理できていない点と紙ベースだと情報漏洩になり兼ねないことが課題だと考えました。
上記の課題を踏まえ、社員それぞれのユーザー管理ができること、社員であればいつでも作成・閲覧ができること、社内ツールとして全社統一できることを考えこのようなアプリケーションを作成しました。
今後ブラッシュアップを重ねた上で実際に現場でテストしてもらう予定です。


# 実装予定の機能
-

# 開発環境
-

# ローカルでの動作方法
-

# 工夫した点
-


# テーブル設計

## users テーブル ユーザー情報

| Column              | Type   | Options                   |
| ------------------  | ------ | ------------------------- |
| last_name           | string | null: false               |
| first_name          | string | null: false               |
| password            | string | null: false               |
| email               | string | null: false, unique: true |
| office_name         | string | null: false               |
| birthday            | date   | null: false               |

### Association

- has_many :dailies
- has_many :comments
- has_many :customers


## customers テーブル 顧客情報

| Column           | Type         | Options                         |
| -----------------| ----------   | ------------------------------  |
| customer_name    | string       | null: false                     |
| category_id      | integer      | null: false                     |
| postcode         | string       | null: false                     |
| prefecture_id    | integer      | null: false                     |
| city             | string       | null: false                     |
| block            | string       | null: false                     |
| building         | string       |                                 |
| phone_number     | integer      | null: false                     |
| capacity         | string       | null: false                     |
| contract_id      | integer      | null: false                     |
| remarks_column   | text         |                                 |

### Association

- has_many :dailies


## dailies テーブル 日報情報

| Column         | Type         | Options                        |
| ---------      | ------------ | ------------------------------ |
| user           | references   | null: false, foreign_key: true |
| customer       | references   | null: false, foreign_key: true |
| meet_year      | string       | null: false                    |
| meet_month     | string       | null: false                    |
| meet_day       | string       | null: false                    |
| manager_name   | string       |                                |
| meal_id        | integer      | null: false                    |
| competitor     | string       |                                |
| report         | text         | null: false                    |

### Association

- belongs_to :user
- belongs_to :customer
- has many  :comments

## comments テーブル コメント情報

| Column        | Type         | Options                        |
| --------------| ------------ | ------------------------------ |
| text          | text         | null: false                    |
| user          | references   | null: false, foreign_key: true |
| customer      | references   | null: false, foreign_key: true |
| daily         | references   | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :customer
- belongs_to :daily
