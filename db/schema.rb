# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_04_015112) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "vehicle_trackers", id: false, force: :cascade do |t|
    t.bigint "vehicle_id", null: false
    t.decimal "latitude", precision: 10, scale: 6
    t.decimal "longitude", precision: 10, scale: 6
    t.boolean "speeding", default: false
    t.boolean "maintenance_required", default: false
    t.datetime "recorded_on"
    t.index ["vehicle_id", "recorded_on"], name: "index_vehicle_trackers_on_vehicle_id_and_recorded_on"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "name"
    t.string "vin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
