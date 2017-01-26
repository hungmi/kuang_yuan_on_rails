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

ActiveRecord::Schema.define(version: 20170126073059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "attachments", force: :cascade do |t|
    t.string   "image"
    t.string   "imageable_type"
    t.integer  "imageable_id"
    t.boolean  "cover",          default: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["imageable_type", "imageable_id"], name: "index_attachments_on_imageable_type_and_imageable_id", using: :btree
  end

  create_table "example_and_stones", force: :cascade do |t|
    t.integer  "example_id"
    t.integer  "stone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["example_id", "stone_id"], name: "index_example_and_stones_on_example_id_and_stone_id", unique: true, using: :btree
    t.index ["example_id"], name: "index_example_and_stones_on_example_id", using: :btree
    t.index ["stone_id"], name: "index_example_and_stones_on_stone_id", using: :btree
  end

  create_table "examples", force: :cascade do |t|
    t.string   "zh_name"
    t.string   "en_name"
    t.string   "date_and_time"
    t.text     "description"
    t.integer  "ad_status",     default: 0
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "stones", force: :cascade do |t|
    t.string   "zh_name"
    t.string   "en_name"
    t.string   "origin"
    t.string   "number"
    t.string   "size"
    t.string   "feature"
    t.string   "good_place"
    t.text     "description"
    t.integer  "ad_status",   default: 0
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "technique_and_stones", force: :cascade do |t|
    t.integer  "technique_id"
    t.integer  "stone_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["stone_id"], name: "index_technique_and_stones_on_stone_id", using: :btree
    t.index ["technique_id", "stone_id"], name: "index_technique_and_stones_on_technique_id_and_stone_id", unique: true, using: :btree
    t.index ["technique_id"], name: "index_technique_and_stones_on_technique_id", using: :btree
  end

  create_table "techniques", force: :cascade do |t|
    t.string   "zh_name"
    t.string   "en_name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "example_and_stones", "examples"
  add_foreign_key "example_and_stones", "stones"
  add_foreign_key "technique_and_stones", "stones"
  add_foreign_key "technique_and_stones", "techniques"
end
