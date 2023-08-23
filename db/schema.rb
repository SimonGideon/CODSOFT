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

ActiveRecord::Schema[7.0].define(version: 2023_08_23_215356) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "booking_stations", force: :cascade do |t|
    t.string "town"
    t.string "landmark"
    t.bigint "track_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["track_id"], name: "index_booking_stations_on_track_id"
  end

  create_table "buses", force: :cascade do |t|
    t.string "bus_model"
    t.integer "number_of_seats"
    t.jsonb "amenities"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string "booking_ref"
    t.integer "seat_number"
    t.bigint "user_id", null: false
    t.bigint "bus_id", null: false
    t.bigint "track_id", null: false
    t.bigint "booking_station_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_station_id"], name: "index_tickets_on_booking_station_id"
    t.index ["bus_id"], name: "index_tickets_on_bus_id"
    t.index ["track_id"], name: "index_tickets_on_track_id"
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "tracks", force: :cascade do |t|
    t.string "route_point_a"
    t.string "route_point_b"
    t.integer "price"
    t.datetime "departure"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "country"
    t.string "user_name"
    t.string "gender"
    t.string "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "booking_stations", "tracks"
  add_foreign_key "tickets", "booking_stations"
  add_foreign_key "tickets", "buses"
  add_foreign_key "tickets", "tracks"
  add_foreign_key "tickets", "users"
end
