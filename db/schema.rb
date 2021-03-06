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

ActiveRecord::Schema.define(version: 20131231054756) do

  create_table "cards", force: true do |t|
    t.string   "name"
    t.integer  "mv_id"
    t.string   "mana_cost"
    t.integer  "converted_mana_cost"
    t.string   "types"
    t.text     "text"
    t.string   "pt"
    t.string   "rarity"
    t.float    "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "expansion"
  end

  add_index "cards", ["expansion"], name: "index_cards_on_expansion"
  add_index "cards", ["mv_id"], name: "index_cards_on_mv_id"

  create_table "cards_images", id: false, force: true do |t|
    t.integer "card_id"
    t.integer "image_id"
  end

  add_index "cards_images", ["card_id", "image_id"], name: "index_cards_images_on_card_id_and_image_id"
  add_index "cards_images", ["card_id"], name: "index_cards_images_on_card_id"
  add_index "cards_images", ["image_id"], name: "index_cards_images_on_image_id"

  create_table "images", force: true do |t|
    t.string   "type",                          null: false
    t.integer  "fingerprint_l",                 null: false
    t.integer  "fingerprint_r",                 null: false
    t.string   "filename",                      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "needs_review",  default: false
  end

  add_index "images", ["filename"], name: "index_images_on_filename", unique: true
  add_index "images", ["fingerprint_l", "fingerprint_r"], name: "index_images_on_fingerprint_l_and_fingerprint_r"
  add_index "images", ["type"], name: "index_images_on_type"

end
