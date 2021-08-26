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

ActiveRecord::Schema.define(version: 2021_08_25_123549) do

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "primary_number"
    t.integer "alternate_number"
    t.text "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "status"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.integer "mobile_number"
    t.integer "pan_card"
    t.text "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "machines", force: :cascade do |t|
    t.string "name"
    t.integer "model_number"
    t.string "model_series"
    t.integer "customer_id", null: false
    t.integer "employee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "status"
    t.index ["customer_id"], name: "index_machines_on_customer_id"
    t.index ["employee_id"], name: "index_machines_on_employee_id"
  end

  add_foreign_key "machines", "customers"
  add_foreign_key "machines", "employees"
end
