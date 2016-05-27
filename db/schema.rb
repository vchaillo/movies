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

ActiveRecord::Schema.define(version: 20160527022636) do

  create_table "actors", force: :cascade do |t|
    t.string   "fullname",   null: false
    t.date     "birth"
    t.text     "bio"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "actors", ["fullname"], name: "index_actors_on_fullname", unique: true

  create_table "actors_countries", id: false, force: :cascade do |t|
    t.integer "actor_id"
    t.integer "country_id"
  end

  add_index "actors_countries", ["actor_id"], name: "index_actors_countries_on_actor_id"
  add_index "actors_countries", ["country_id"], name: "index_actors_countries_on_country_id"

  create_table "actors_movies", id: false, force: :cascade do |t|
    t.integer "actor_id"
    t.integer "movie_id"
  end

  add_index "actors_movies", ["actor_id"], name: "index_actors_movies_on_actor_id"
  add_index "actors_movies", ["movie_id"], name: "index_actors_movies_on_movie_id"

  create_table "categories", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_movies", id: false, force: :cascade do |t|
    t.integer "category_id"
    t.integer "movie_id"
  end

  add_index "categories_movies", ["category_id"], name: "index_categories_movies_on_category_id"
  add_index "categories_movies", ["movie_id"], name: "index_categories_movies_on_movie_id"

  create_table "countries", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries_directors", id: false, force: :cascade do |t|
    t.integer "country_id"
    t.integer "director_id"
  end

  add_index "countries_directors", ["country_id"], name: "index_countries_directors_on_country_id"
  add_index "countries_directors", ["director_id"], name: "index_countries_directors_on_director_id"

  create_table "countries_movies", id: false, force: :cascade do |t|
    t.integer "country_id"
    t.integer "movie_id"
  end

  add_index "countries_movies", ["country_id"], name: "index_countries_movies_on_country_id"
  add_index "countries_movies", ["movie_id"], name: "index_countries_movies_on_movie_id"

  create_table "countries_writers", id: false, force: :cascade do |t|
    t.integer "country_id"
    t.integer "writer_id"
  end

  add_index "countries_writers", ["country_id"], name: "index_countries_writers_on_country_id"
  add_index "countries_writers", ["writer_id"], name: "index_countries_writers_on_writer_id"

  create_table "directors", force: :cascade do |t|
    t.string   "fullname",   null: false
    t.date     "birth"
    t.text     "bio"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "directors", ["fullname"], name: "index_directors_on_fullname", unique: true

  create_table "directors_movies", id: false, force: :cascade do |t|
    t.integer "director_id"
    t.integer "movie_id"
  end

  add_index "directors_movies", ["director_id"], name: "index_directors_movies_on_director_id"
  add_index "directors_movies", ["movie_id"], name: "index_directors_movies_on_movie_id"

  create_table "movies", force: :cascade do |t|
    t.string   "title_vf",   null: false
    t.string   "title_vo"
    t.string   "year"
    t.string   "duration"
    t.string   "quality"
    t.string   "language"
    t.boolean  "bw"
    t.string   "image"
    t.text     "synopsis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "movies", ["title_vf"], name: "index_movies_on_title_vf", unique: true
  add_index "movies", ["title_vo"], name: "index_movies_on_title_vo", unique: true

  create_table "movies_tags", id: false, force: :cascade do |t|
    t.integer "movie_id"
    t.integer "tag_id"
  end

  add_index "movies_tags", ["movie_id"], name: "index_movies_tags_on_movie_id"
  add_index "movies_tags", ["tag_id"], name: "index_movies_tags_on_tag_id"

  create_table "movies_writers", id: false, force: :cascade do |t|
    t.integer "movie_id"
    t.integer "writer_id"
  end

  add_index "movies_writers", ["movie_id"], name: "index_movies_writers_on_movie_id"
  add_index "movies_writers", ["writer_id"], name: "index_movies_writers_on_writer_id"

  create_table "tags", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                            null: false
    t.string   "password_digest",                  null: false
    t.string   "fullname",                         null: false
    t.string   "nickname",                         null: false
    t.string   "avatar"
    t.string   "role",            default: "user"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["nickname"], name: "index_users_on_nickname", unique: true

  create_table "writers", force: :cascade do |t|
    t.string   "fullname"
    t.date     "birth"
    t.text     "bio"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "writers", ["fullname"], name: "index_writers_on_fullname", unique: true

end
