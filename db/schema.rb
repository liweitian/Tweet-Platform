# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "followers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "following"
    t.index ["user_id"], name: "index_followers_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tweet_id"
    t.index ["tweet_id"], name: "index_likes_on_tweet_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "news", force: :cascade do |t|
    t.string "publisher_id"
    t.text   "content"
    t.index ["publisher_id"], name: "index_news_on_publisher_id"
  end

  create_table "privatespaces", force: :cascade do |t|
    t.integer "user_id"
    t.string  "layout"
    t.index ["user_id"], name: "index_privatespaces_on_user_id"
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
  end

  create_table "tweets", force: :cascade do |t|
    t.integer "user_id"
    t.text    "content"
    t.string  "time"
    t.index ["user_id"], name: "index_tweets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "account"
    t.string "password"
    t.string "name"
    t.string "gender"
  end

end
