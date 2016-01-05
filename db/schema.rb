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

ActiveRecord::Schema.define(version: 20160104131720) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string   "album_title"
    t.date     "album_date"
    t.integer  "artist_id"
    t.boolean  "favorite_album"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "artist_name"
  end

  create_table "artists", force: :cascade do |t|
    t.string   "artist_name"
    t.boolean  "favorite_artist"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end


  create_table "record_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "record_users", ["email"], name: "index_record_users_on_email", unique: true, using: :btree
  add_index "record_users", ["reset_password_token"], name: "index_record_users_on_reset_password_token", unique: true, using: :btree


  create_table "songs", force: :cascade do |t|
    t.integer  "song_id"
    t.string   "spng_title"
    t.string   "album_id"
    t.boolean  "favorite_song"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end



  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_hash"
    t.string "password_salt"
  end

end
