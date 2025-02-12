# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_02_12_045521) do
  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rider_rides", force: :cascade do |t|
    t.integer "rider_id", null: false
    t.integer "ride_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ride_id"], name: "index_rider_rides_on_ride_id"
    t.index ["rider_id"], name: "index_rider_rides_on_rider_id"
  end

  create_table "riders", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rides", force: :cascade do |t|
    t.integer "origin_id", null: false
    t.integer "destination_id", null: false
    t.datetime "start"
    t.datetime "end"
    t.integer "miles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_rides_on_destination_id"
    t.index ["origin_id"], name: "index_rides_on_origin_id"
  end

  add_foreign_key "rider_rides", "riders"
  add_foreign_key "rider_rides", "rides"
end
