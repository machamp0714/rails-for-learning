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

ActiveRecord::Schema.define(version: 2021_05_30_022253) do

  create_table "prices", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.boolean "active"
    t.string "billing_schema"
    t.string "currency"
    t.string "lookup_key"
    t.string "recurring_interval"
    t.integer "recurring_interval_count"
    t.string "recurring_usage_type"
    t.string "type"
    t.integer "unit_amount"
    t.string "unit_amount_decimal"
    t.string "external_id"
    t.string "product_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["active"], name: "index_prices_on_active"
    t.index ["lookup_key"], name: "index_prices_on_lookup_key", unique: true
    t.index ["product_id"], name: "index_prices_on_product_id"
  end

  create_table "products", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "active"
    t.string "external_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["active"], name: "index_products_on_active"
    t.index ["external_id"], name: "index_products_on_external_id"
  end

end
