-## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|

### Association
- has_many :rooms_users
- has_many :rooms,  through:  :rooms_users
- has_many :messages

## roomsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :rooms_users
- has_many :users,  through:  :rooms_users
- has_many :messages

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string||
|text|string||
|user_id|integer|null: false, foreign_key: true|
|room_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :room

## rooms_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|room_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :room
- belongs_to :user
