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

ActiveRecord::Schema.define(version: 20160316102650) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer  "guide_id"
    t.integer  "visitor_id"
    t.integer  "tour_id"
    t.date     "date"
    t.time     "check_in"
    t.time     "check_out"
    t.string   "status"
    t.integer  "total_price"
    t.integer  "hour_rate"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "bookings", ["guide_id"], name: "index_bookings_on_guide_id", using: :btree
  add_index "bookings", ["tour_id"], name: "index_bookings_on_tour_id", using: :btree
  add_index "bookings", ["visitor_id"], name: "index_bookings_on_visitor_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "booking_id"
    t.text     "content"
    t.integer  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["booking_id"], name: "index_reviews_on_booking_id", using: :btree

  create_table "tours", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "category_id"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tours", ["category_id"], name: "index_tours_on_category_id", using: :btree
  add_index "tours", ["user_id"], name: "index_tours_on_user_id", using: :btree

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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "guide"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthday"
    t.string   "picture_url"
    t.string   "street"
    t.string   "zipcode"
    t.string   "city"
    t.string   "phone"
    t.text     "bio"
    t.integer  "hour_rate"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "bookings", "tours"
  add_foreign_key "bookings", "users", column: "guide_id"
  add_foreign_key "bookings", "users", column: "visitor_id"
  add_foreign_key "reviews", "bookings"
  add_foreign_key "tours", "categories"
  add_foreign_key "tours", "users"
end
