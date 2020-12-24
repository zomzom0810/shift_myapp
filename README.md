
# テーブル設計

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
| start       | datetime   | null: false                    |
| end         | datetime   | null: false                    |
| user_id     | references | null: false                    |

### Association
- belongs_to : user 