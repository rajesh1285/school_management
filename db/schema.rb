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

ActiveRecord::Schema.define(version: 2019_04_21_051239) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "principals", force: :cascade do |t|
    t.string "name"
    t.string "education"
    t.string "sspecialization"
    t.string "gender"
    t.integer "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "recognized"
    t.text "address"
    t.integer "phone"
    t.bigint "principal_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["principal_id"], name: "index_schools_on_principal_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.integer "phone"
    t.string "gender"
    t.integer "school_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "subject"
    t.string "speecialization"
    t.string "education"
    t.integer "phone"
    t.string "gender"
    t.integer "school_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "schools", "principals"
end
