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

ActiveRecord::Schema.define(version: 20150701231038) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "kaijus", force: :cascade do |t|
    t.string   "name"
    t.integer  "size"
    t.string   "description"
    t.string   "timestamps"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
    t.string   "image"
  end

  create_table "kaijus_works", id: false, force: :cascade do |t|
    t.integer "kaiju_id"
    t.integer "work_id"
  end

  add_index "kaijus_works", ["kaiju_id"], name: "index_kaijus_works_on_kaiju_id", using: :btree
  add_index "kaijus_works", ["work_id"], name: "index_kaijus_works_on_work_id", using: :btree

  create_table "works", force: :cascade do |t|
    t.string   "author"
    t.string   "actors"
    t.string   "description"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
  end

end
