# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# DB設計

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|user-id|string|null: false|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
|icon|text|-------|

### Association
- has_many :musics
- has_many :posts, dependent: :destroy
- has_many :likes, dependent: :destroy
- has_many :liked_posts, through: :likes, source: :post

## postテーブル

|Column|Type|Options|
|------|----|-------|
|content|text|-------|
|user_id|references|null: false, foreign_key: true|
|music_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :music
- has_many :likes
- has_many :liked_users, through: :likes, source: :user

## musicテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|------|
|artist|string|------|
|image|string|------|

### Association
- beongs_to :user
- belongs_to :post

## Likeテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|foreign_key: true|
|post_id|references|foreign_key: true|

### Association