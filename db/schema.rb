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

ActiveRecord::Schema.define(version: 20150305221016) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bootcampcoords", force: :cascade do |t|
    t.integer  "city_id"
    t.float    "lat"
    t.float    "lon"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "bootcamp_id"
  end

  create_table "bootcampimgs", force: :cascade do |t|
    t.string   "url"
    t.integer  "bootcamp_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "bootcamps", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  create_table "bootcamps_cities", id: false, force: :cascade do |t|
    t.integer "bootcamp_id", null: false
    t.integer "city_id",     null: false
  end

  add_index "bootcamps_cities", ["bootcamp_id", "city_id"], name: "index_bootcamps_cities_on_bootcamp_id_and_city_id", using: :btree
  add_index "bootcamps_cities", ["city_id", "bootcamp_id"], name: "index_bootcamps_cities_on_city_id_and_bootcamp_id", using: :btree

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.text     "description"
    t.text     "bootcamps"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cityimgs", force: :cascade do |t|
    t.string   "url"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "neighborhoodimgs", force: :cascade do |t|
    t.string   "url"
    t.integer  "neighborhood_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "city_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string   "agent"
    t.string   "city"
    t.string   "link"
    t.string   "bootcamp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
