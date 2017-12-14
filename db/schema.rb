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

ActiveRecord::Schema.define(version: 20171212040007) do

  create_table "class_rooms", force: :cascade do |t|
    t.integer  "person_price"
    t.string   "style_name"
    t.integer  "expect_count"
    t.boolean  "can_add_bed"
    t.float    "discount_rate"
    t.float    "surcharge_rate"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "members", force: :cascade do |t|
    t.string   "user_id"
    t.string   "address"
    t.integer  "tel"
    t.integer  "age"
    t.string   "email"
    t.boolean  "admin_authority"
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "plan_rooms", force: :cascade do |t|
    t.integer  "room_id"
    t.integer  "plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string   "name"
    t.integer  "apply_count"
    t.integer  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "room_id"
    t.integer  "plan_id"
    t.integer  "member_id"
    t.integer  "guest_count"
    t.integer  "sum_price"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "is_extend"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer  "class_room_id"
    t.integer  "room_number"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
