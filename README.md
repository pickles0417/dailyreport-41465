# アプリケーション名
- 営業日報管理システム(特定の法人向け)

# アプリケーション概要
- 営業先の顧客情報と商談記録の作成・管理ができます。

# URL
- https://dailyreport-41465-1.onrender.com

# テスト用アカウント
- メール：test1@test.com
- パスワード：test1111

# 利用方法(※動画撮影時間に制限があるため一部割愛しています)
- [ユーザー新規登録](https://gyazo.com/0321dd3ab7e08d382b02432f74176471 "ユーザー新規登録")<br>
![alt text](新規登録.gif)
1.トップページのヘッダーにある「新規登録」をクリックしフォームの記入<br>

- [ユーザーログイン](https://gyazo.com/87e3b4f984b871a561d5bb5ee0592bda "ユーザーログイン")<br>
![alt text](ログイン.gif)
1.トップページのヘッダーにある「ログイン」をクリックしフォームの記入<br>

- [ユーザーマイページ](https://gyazo.com/abb68aadd5432ec91bafba9e43e91d9f "ユーザーマイページ")<br>
![alt text](マイページ.gif)
1.トップページのヘッダーにある「ユーザー名」をクリックしプルダウンの「マイページ」をクリック<br>

- [顧客登録](https://gyazo.com/39c03680bedb3ce3ba792c7503b905b9 "顧客登録")<br>
![alt text](新規顧客登録.gif)
1.トップページのヘッダーにある「メニュー」をクリックしプルダウンの「顧客登録」をクリック<br>
2.入力フォームに遷移されるので必要な情報を入力し、「登録する」ボタンを押すとトップページ顧客一覧に反映<br>

- [顧客詳細](https://gyazo.com/bd92443086c2853551bcac84a85f7fe2 "顧客詳細")<br>
![alt text](顧客詳細_.gif)
1.トップページ顧客一覧から顧客情報の列「詳細」ボタンをクリックし詳細画面に遷移<br>

- [顧客検索機能](https://gyazo.com/233fedea66de875fbd9062fd1acdad9a "顧客検索機能")<br>
![alt text](顧客検索機能.gif)
1.トップページのヘッダー右側の検索ファームに任意の顧客名を入力し「検索」ボタンをクリック<br>
2.検索結果画面に該当する顧客情報が表示される<br>

- [顧客編集](https://gyazo.com/909fb79c2503f5d852864c0fec9de9fc "顧客編集")<br>
![alt text](顧客編集.gif)
1.顧客詳細ページから「編集」ボタンをクリックし、フォーム入力後、更新された詳細ページに遷移<br>

- [顧客に紐づく商談履歴](https://gyazo.com/3cfe7c86f6a76bdb2b18155dd816805b "顧客に紐づく商談履歴")<br>
![alt text](商談履歴.gif)
1.トップページ顧客一覧から商談履歴列の「詳細」ボタンをクリックし商談履歴画面に遷移<br>

- [商談登録](https://gyazo.com/6722e023a74ef885abab166d7c25ed30 "商談登録")<br>
![alt text](日報新規登録.gif)
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
上記の課題を踏まえ、顧客ごとの商談経緯を可視化、作業効率化、
社内ツールとして全社統一できることを考えこのようなアプリケーションを作成しました。
今回一般層向けではなく特定の会社用として利用できるアプリとなっておりますので、今後ブラッシュアップを重ねた上で実際に現場でテストしてもらう予定です。


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



