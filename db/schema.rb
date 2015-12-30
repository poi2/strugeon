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

ActiveRecord::Schema.define(version: 20151230103726) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "target_amount"
    t.datetime "closed_at"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "articles_innovators", id: false, force: :cascade do |t|
    t.integer "article_id",   null: false
    t.integer "innovator_id", null: false
  end

  add_index "articles_innovators", ["article_id", "innovator_id"], name: "index_articles_innovators_on_article_id_and_innovator_id"
  add_index "articles_innovators", ["innovator_id", "article_id"], name: "index_articles_innovators_on_innovator_id_and_article_id"

  create_table "innovators", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.date     "birth"
    t.text     "description"
    t.string   "url"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  create_table "investments", force: :cascade do |t|
    t.integer  "ticked_id"
    t.integer  "investor_id"
    t.datetime "deleted_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "investors", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.date     "birth"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer  "article_id"
    t.integer  "price"
    t.text     "reword"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
