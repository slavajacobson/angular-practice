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

ActiveRecord::Schema.define(version: 20140316205205) do

  create_table "airports", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "airports_destinations", force: true do |t|
    t.integer "airport_id"
    t.integer "destination_id"
  end

  create_table "destinations", force: true do |t|
    t.integer  "airport_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "destinations", ["airport_id"], name: "index_destinations_on_airport_id"

  create_table "flights", force: true do |t|
    t.integer  "number"
    t.string   "origin"
    t.string   "destination"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.integer  "number"
    t.string   "origin"
    t.string   "destination"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
