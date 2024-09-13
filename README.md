# テーブル設計

## users テーブル　ユーザー情報

| Column              | Type   | Options                   |
| ------------------  | ------ | ------------------------- |
| last_name           | string | null: false               |
| first_name          | string | null: false               |
| password            | string | null: false               |
| email               | string | null: false, unique: true |
| office_name         | string | null: false               |
| birthday            | date   | null: false               |

### Association

- has_many :customers
- has_many :dailies
- has_many :comments
- has_many :customers


## customers テーブル 顧客情報

| Column           | Type         | Options                         |
| -----------------| ----------   | ------------------------------  |
| customer_name    | string       | null: false                     |
| category_id      | integer      | null: false                     | hash
| postcode         | string       | null: false                     |
| prefecture_id    | integer      | null: false                     | hash
| city             | string       | null: false                     |
| block            | string       | null: false                     |
| building         | string       | null: false                     |
| phone_number     | integer      | null: false                     |
| capacity         | string       | null: false                     | 定員
| contract_id      | integer      | null: false                     | hash
| remarks_column   | text         | null: false                     | 備考欄
| user             | references   | null: false, foreign_key: true  | usersテーブル作成後必要であれば

### Association

- belongs_to :user
- has_many :dailies


## dailies テーブル 日報情報

| Column         | Type         | Options                        |
| ---------      | ------------ | ------------------------------ |
| user           | references   | null: false, foreign_key: true |
| customer       | references   | null: false, foreign_key: true |
| meet_year      | string       | null: false                    |
| meet_month     | integer      | null: false                    |
| meet_date      | string       | null: false                    |
| manager_name   | string       | null: false                    |
| meal_id        | integer      | null: false                    |
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


