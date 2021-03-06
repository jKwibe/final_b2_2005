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

ActiveRecord::Schema.define(version: 20200803152359) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airlines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flight_passangers", force: :cascade do |t|
    t.bigint "flight_id"
    t.bigint "passanger_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flight_id"], name: "index_flight_passangers_on_flight_id"
    t.index ["passanger_id"], name: "index_flight_passangers_on_passanger_id"
  end

  create_table "flights", force: :cascade do |t|
    t.string "number"
    t.string "date"
    t.string "time"
    t.string "dep_city"
    t.string "arr_city"
    t.bigint "airline_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["airline_id"], name: "index_flights_on_airline_id"
  end

  create_table "passangers", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "flight_passangers", "flights"
  add_foreign_key "flight_passangers", "passangers"
  add_foreign_key "flights", "airlines"
end
