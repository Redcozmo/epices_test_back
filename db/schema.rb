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

ActiveRecord::Schema.define(version: 2019_12_10_113629) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "daily_data", force: :cascade do |t|
    t.date "date"
    t.integer "daily_energy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "inverter_id"
    t.index ["inverter_id"], name: "index_daily_data_on_inverter_id"
  end

  create_table "hourly_data", force: :cascade do |t|
    t.datetime "datetime"
    t.integer "energy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "daily_datum_id"
    t.index ["daily_datum_id"], name: "index_hourly_data_on_daily_datum_id"
  end

  create_table "inverters", force: :cascade do |t|
    t.integer "num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "daily_data", "inverters"
  add_foreign_key "hourly_data", "daily_data"
end
