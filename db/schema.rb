# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160111054510) do

  create_table "carts", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "amount",     null: false
    t.string   "aasm_state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "carts", ["user_id"], name: "index_carts_on_user_id"

  create_table "deal_units", force: :cascade do |t|
    t.integer  "deal_id",     null: false
    t.string   "title",       null: false
    t.text     "description", null: false
    t.integer  "price",       null: false
    t.string   "reward",      null: false
    t.string   "aasm_state"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "deal_units", ["deal_id"], name: "index_deal_units_on_deal_id"

  create_table "deals", force: :cascade do |t|
    t.string   "title",           null: false
    t.string   "permalink",       null: false
    t.integer  "front_runner_id", null: false
    t.integer  "target_amount",   null: false
    t.text     "description",     null: false
    t.string   "aasm_state"
    t.datetime "start_at",        null: false
    t.datetime "end_at",          null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "deals", ["front_runner_id"], name: "index_deals_on_front_runner_id"
  add_index "deals", ["permalink"], name: "index_deals_on_permalink", unique: true

  create_table "inventories", force: :cascade do |t|
    t.integer  "deal_unit_id", null: false
    t.integer  "stock",        null: false
    t.integer  "ready",        null: false
    t.integer  "sold",         null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "inventories", ["deal_unit_id"], name: "index_inventories_on_deal_unit_id"

  create_table "orders", force: :cascade do |t|
    t.integer  "cart_id",      null: false
    t.integer  "deal_unit_id", null: false
    t.integer  "quantity",     null: false
    t.string   "aasm_state"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "orders", ["cart_id"], name: "index_orders_on_cart_id"
  add_index "orders", ["deal_unit_id"], name: "index_orders_on_deal_unit_id"

  create_table "payments", force: :cascade do |t|
    t.integer  "cart_id",        null: false
    t.string   "auth_code"
    t.string   "payment_method", null: false
    t.string   "aasm_state"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "payments", ["cart_id"], name: "index_payments_on_cart_id"

end
