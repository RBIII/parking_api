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

ActiveRecord::Schema.define(version: 20181010075727) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "parking_spaces", force: :cascade do |t|
    t.string "label", default: ""
    t.string "parking_type"
    t.decimal "latitude", null: false
    t.decimal "longitude", null: false
    t.string "street_address"
    t.string "state"
    t.string "country"
    t.string "zip_code"
    t.decimal "rate"
    t.string "meter_status"
    t.string "space_status"
    t.boolean "street_cleaning"
    t.boolean "tow_away"
    t.boolean "pre_pay"
    t.string "free_periods", array: true
    t.string "pay_periods", array: true
    t.string "meter_vendor"
    t.integer "meter_id"
    t.string "meter_type"
    t.integer "minute_limit"
    t.index ["latitude", "longitude"], name: "index_parking_spaces_on_latitude_and_longitude", unique: true
  end

end
