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

ActiveRecord::Schema.define(version: 2021_09_28_052633) do

  create_table "item_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "item_taxes", force: :cascade do |t|
    t.string "tax_name"
    t.string "tax_type"
    t.decimal "tax"
    t.integer "items_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["items_id"], name: "index_item_taxes_on_items_id"
  end

  create_table "item_taxes_items", id: false, force: :cascade do |t|
    t.integer "items_id"
    t.integer "item_taxes_id"
    t.index ["item_taxes_id"], name: "index_item_taxes_items_on_item_taxes_id"
    t.index ["items_id"], name: "index_item_taxes_items_on_items_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.decimal "rate"
    t.integer "item_category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["item_category_id"], name: "index_items_on_item_category_id"
  end

  add_foreign_key "item_taxes", "items", column: "items_id"
  add_foreign_key "items", "item_categories"
end
