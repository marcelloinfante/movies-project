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

ActiveRecord::Schema.define(version: 2021_11_03_124538) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "artists", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists_movies", id: false, force: :cascade do |t|
    t.bigint "movie_id"
    t.bigint "artist_id"
    t.index ["artist_id"], name: "index_artists_movies_on_artist_id"
    t.index ["movie_id"], name: "index_artists_movies_on_movie_id"
  end

  create_table "critics", force: :cascade do |t|
    t.string "author"
    t.integer "score"
    t.text "avaliation"
    t.bigint "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_critics_on_movie_id"
  end

  create_table "directors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres_movies", id: false, force: :cascade do |t|
    t.bigint "movie_id"
    t.bigint "genre_id"
    t.index ["genre_id"], name: "index_genres_movies_on_genre_id"
    t.index ["movie_id"], name: "index_genres_movies_on_movie_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "duration"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "director_id"
    t.index ["director_id"], name: "index_movies_on_director_id"
  end

  create_table "movies_stores", id: false, force: :cascade do |t|
    t.bigint "movie_id"
    t.bigint "store_id"
    t.integer "quantity"
    t.index ["movie_id"], name: "index_movies_stores_on_movie_id"
    t.index ["store_id"], name: "index_movies_stores_on_store_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.float "profit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location"
  end

  add_foreign_key "artists_movies", "artists"
  add_foreign_key "artists_movies", "movies"
  add_foreign_key "genres_movies", "genres"
  add_foreign_key "genres_movies", "movies"
  add_foreign_key "movies", "directors"
  add_foreign_key "movies_stores", "movies"
  add_foreign_key "movies_stores", "stores"
end
