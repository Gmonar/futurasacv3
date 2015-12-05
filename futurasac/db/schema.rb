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

ActiveRecord::Schema.define(version: 20151205045109) do

  create_table "districts", force: :cascade do |t|
    t.string   "description", limit: 255
    t.boolean  "status",                  default: true
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "user_id",     limit: 4
  end

  add_index "districts", ["user_id"], name: "index_districts_on_user_id", using: :btree

  create_table "drivers", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.string   "identitydocument", limit: 255
    t.string   "license",          limit: 255
    t.boolean  "status"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id",          limit: 4
    t.string   "sourceaddress",    limit: 255
    t.datetime "servicehour"
    t.string   "targetaddress",    limit: 255
    t.integer  "rate_id",          limit: 4
    t.date     "servicedate"
    t.integer  "passengernumber",  limit: 4
    t.integer  "vehicle_id",       limit: 4
    t.string   "paymenttype",      limit: 255
    t.date     "registrationdate"
    t.datetime "registrationhour"
    t.string   "rating",           limit: 255
    t.text     "commentservice",   limit: 65535
    t.string   "status",           limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "orders", ["rate_id"], name: "index_orders_on_rate_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree
  add_index "orders", ["vehicle_id"], name: "index_orders_on_vehicle_id", using: :btree

  create_table "rates", force: :cascade do |t|
    t.integer  "price",          limit: 4
    t.string   "district_start", limit: 255
    t.string   "district_end",   limit: 255
    t.boolean  "status"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",          null: false
    t.string   "encrypted_password",     limit: 255, default: "",          null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,           null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "name",                   limit: 255
    t.string   "lastname",               limit: 255
    t.string   "identitydocument",       limit: 255
    t.date     "birthdate"
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
    t.string   "role",                   limit: 255, default: "passenger"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vehicles", force: :cascade do |t|
    t.string   "color",      limit: 255
    t.string   "plaque",     limit: 255
    t.string   "brand",      limit: 255
    t.string   "category",   limit: 255
    t.boolean  "status"
    t.integer  "driver_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "vehicles", ["driver_id"], name: "index_vehicles_on_driver_id", using: :btree

  add_foreign_key "districts", "users"
  add_foreign_key "orders", "rates"
  add_foreign_key "orders", "users"
  add_foreign_key "orders", "vehicles"
  add_foreign_key "vehicles", "drivers"
end
