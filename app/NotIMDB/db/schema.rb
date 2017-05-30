# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151203180442) do

  create_table "comments", force: :cascade do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["movie_id"], name: "index_comments_on_movie_id"

  create_table "movie_reqs", force: :cascade do |t|
    t.string   "title"
    t.string   "genre"
    t.string   "director"
    t.string   "actor1"
    t.string   "actor2"
    t.string   "actor3"
    t.integer  "releaseyr"
    t.integer  "rating"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.string   "genre"
    t.string   "director"
    t.string   "actor1"
    t.string   "actor2"
    t.string   "actor3"
    t.integer  "releaseyr"
    t.integer  "rating"
    t.text     "description"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.text     "picture_link"
    t.boolean  "viewable",      default: false
    t.text     "video_link"
    t.text     "purchase_link"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.string   "password_hint"
    t.boolean  "admin",           default: false
    t.boolean  "mod"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
