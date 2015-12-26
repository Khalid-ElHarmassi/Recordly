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

ActiveRecord::Schema.define(version: 20151223213744) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.integer  "album_id"
    t.string   "album_title"
    t.date     "album_date"
    t.integer  "artist_id"
    t.boolean  "favorite_album"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "artists", force: :cascade do |t|
    t.integer  "artist_id"
    t.string   "artist_name"
    t.boolean  "favorite_artist"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "songs", force: :cascade do |t|
    t.integer  "song_id"
    t.string   "spng_title"
    t.string   "album_id"
    t.boolean  "favorite_song"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
