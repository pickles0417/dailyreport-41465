# アプリケーション名
- 営業日報管理システム

# アプリケーション概要
- 営業先の顧客情報と商談記録の作成・管理ができます。

# URL
- https://dailyreport-41465.onrender.com

# テスト用アカウント
- メール：test1@test.com
- パスワード：test1111

# 利用方法
- [ユーザー新規登録](https://gyazo.com/601f45af6d5f9602b42cc88eaec59d9d "ユーザー新規登録")<br>
1.トップページのヘッダーにある「新規登録」をクリックしフォームの記入<br><br>

- [ユーザーログイン](https://gyazo.com/ea1963f98555c6c70659c424becb09ef "ユーザーログイン")<br>
1.トップページのヘッダーにある「ログイン」をクリックしフォームの記入<br><br>

- [ユーザーマイページ](https://gyazo.com/0a810bb89aaedeb938ada621271bd0fb "ユーザーマイページ")<br>
1.トップページのヘッダーにある「ユーザー名」をクリックしプルダウンの「マイページ」をクリック<br><br>

- [顧客登録](https://gyazo.com/2411bd39d69364ae8c08ae094062e98d "顧客登録")<br>
1.トップページのヘッダーにある「メニュー」をクリックしプルダウンの「顧客登録」をクリック<br>
2.入力フォームに遷移されるので必要な情報を入力し、「登録する」ボタンを押すとトップページ顧客一覧に反映<br><br>

- [顧客詳細](https://gyazo.com/682aefeedb9524f61d37edb064968676 "顧客詳細")<br>
1.トップページ顧客一覧から顧客情報の列「詳細」ボタンをクリックし詳細画面に遷移<br><br>

- [顧客検索機能](https://gyazo.com/c7b79eeecc27edc8a265f5e12b583bd6 "顧客検索機能")<br>
1.トップページのヘッダー右側の検索ファームに任意の顧客名を入力し「検索」ボタンをクリック<br>
2.検索結果画面に該当する顧客情報が表示される<br><br>
- [顧客編集](https://gyazo.com/eb1abc65e50810ed0ab103be0b9f8ff5 "顧客編集")<br>
1.顧客詳細ページから「編集」ボタンをクリックし、フォーム入力後、更新された詳細ページに遷移<br><br>

- [顧客に紐づく商談履歴](https://gyazo.com/51ff335a518472e3e9e951e0e0080a72 "顧客に紐づく商談履歴")<br>
1.トップページ顧客一覧から商談履歴列の「詳細」ボタンをクリックし商談履歴画面に遷移<br><br>

- [商談登録](https://gyazo.com/5668709268196c7e68cef7bd954b0d24 "商談登録")<br>
1.商談履歴画面の下部「商談入力」ボタンをクリックし、入力フォーム画面に遷移<br>
2.フォーム入力と「登録する」ボタンをクリックし、更新された商談履歴画面に遷移<br>


# 機能一覧
| 機能               | ログインユーザー| 非ログインユーザー  |
| ------------------ | -------------- | ------------------ |
| ユーザー登録        | ✕             | 〇                 |
| ユーザー編集        | 〇             | ✕                 |
| 顧客一覧            | 〇             | 〇                 |
| 顧客検索            | 〇             | 〇                 |
| 顧客詳細            | 〇             | ✕                 |
| 顧客登録            | 〇             | ✕                 |
| 顧客編集            | 〇             | ✕                 |
| 商談詳細            | 〇             | ✕                 |
| 商談登録            | 〇             | ✕                 |

# アプリケーションを作成した背景
前職で営業をしていた際、顧客や商談の情報などをメモ帳やエクセル、外部サイトを使って各個人で管理していました。
営業活動の効率が悪い、会社として顧客の貴重な情報を全体で管理できていない点、紙ベースだと情報漏洩になり兼ねないことが課題だと考えました。
上記の課題を踏まえ、社員であればいつでも作成・閲覧ができること、顧客ごとの商談経緯を可視化、効率化、
社内ツールとして全社統一できることを考えこのようなアプリケーションを作成しました。
今後ブラッシュアップを重ねた上で実際に現場でテストしてもらう予定です。


# 実装予定の機能
- 顧客情報重複処理防止機能
- 複数カラム＋条件検索機能

# 開発環境
- windows11
- vscode
- rails 7.0.0
- Ruby
- HTML
- CSS
- JavaScript
- MySQL 8.0

# ローカルでの動作方法
% git clone https://github.com/pickles0417/dailyreport-41465.git<br>
% cd dailyreport-41465<br>
% yarn<br>
% yarn dev<br>

# 工夫した点
利用時のシチュエーションをイメージし、使いやすさ・シンプルさに重点を置き、画面遷移やメニュー、ボタンの工夫を行いました。
画面遷移については第三者に触ってもらうことでどのように画面が遷移すればわかりやすい旨の改善点を指摘してもらうようにしました。
メニュー、各種ボタンについてはカラーの統一を行い、JavaScriptを用いてカーソルで色が変わるように実装しました。
今後実際に現場でテストしてもらい、ユーザーヒアリングを行いながら改善を行っていきます。




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

- belongs_to :user
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



