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

ActiveRecord::Schema.define(version: 20141114233157) do

  create_table "reservations", force: true do |t|
    t.datetime "time"
    t.integer  "party_size"
    t.integer  "restaurant_id"
    t.string   "name"
    t.string   "email"
    t.string   "request"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "capacity"
    t.string   "menu"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
