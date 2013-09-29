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

ActiveRecord::Schema.define(version: 20130929075710) do

  create_table "font_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fonts", force: true do |t|
    t.string   "name"
    t.string   "family_name"
    t.boolean  "eot",                    default: true
    t.boolean  "woff",                   default: true
    t.boolean  "ttf",                    default: true
    t.boolean  "svg",                    default: true
    t.integer  "font_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "style",        limit: 1
    t.integer  "weight"
    t.string   "affix"
    t.text     "copyright"
    t.boolean  "woff2",                  default: true
  end

  add_index "fonts", ["font_type_id"], name: "index_fonts_on_font_type_id"

  create_table "related_sites", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
