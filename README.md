## URL 
https://shift-myapp.herokuapp.com/<br>
テストユーザー<br>
ID: abcd<br>
PASSWORD: testtest<br>
## 機能一覧
・ユーザー新規登録機能<br>
・ログイン機能<br>
・ログアウト機能<br>
・シフト登録機能<br>
・シフト編集機能<br>
・シフト削除機能<br>
・月ごとの給与表示<br>
## 概要

## 使用言語
Ruby| JavaScript| HTML| CSS 
## フレームワーク
Ruby on Rails
## SQL
MySQL
## テーブル設計

## users テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| name        | string     | null: false , unique: true     |
| admin       | boolean    | default: false                 |
| position_id | integer    | null: false                    |
| name_kana   | string     | null: false                    |
| user_name   | string     | null: false                    | 
| password    | string     | null: false                    |

### Association
- has_many : events

## events テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| title       | string     |                                |
| start_time  | datetime   | null: false                    |
| end_time    | datetime   | null: false                    |
| user_id     | references |                                |

### Association
- belongs_to : user 