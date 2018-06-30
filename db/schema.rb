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

ActiveRecord::Schema.define(version: 20180630154924) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "creatures", force: :cascade do |t|
    t.string "name"
    t.integer "cr"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "alignment"
    t.string "type"
    t.string "subtype"
    t.string "size"
    t.integer "initiative"
    t.string "senses"
    t.string "perception"
    t.string "languages"
    t.string "skills"
    t.string "items"
    t.string "appearance"
    t.string "description"
    t.string "environment"
    t.string "organization"
    t.string "treasure"
    t.string "source"
    t.string "ac"
    t.string "ac_notes"
    t.string "cmd"
    t.string "saves"
    t.integer "hp"
    t.string "hd"
    t.string "dr"
    t.string "fast_healing_regen"
    t.string "immunities"
    t.string "resistances"
    t.integer "sr"
    t.string "weaknesses"
    t.string "defensive_abilities"
    t.string "speed"
    t.string "speed_note"
    t.string "melee"
    t.string "cmb"
    t.string "ranged"
    t.string "offense_note"
    t.string "special_abilities"
    t.string "spell_like_abilities"
    t.string "spells_known"
    t.string "spells_prepared"
    t.string "feats"
    t.string "additional_special_qualities"
    t.string "str"
    t.string "dex"
    t.string "con"
    t.string "int"
    t.string "wis"
    t.string "cha"
    t.string "reach"
    t.index ["user_id"], name: "index_creatures_on_user_id"
  end

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  add_foreign_key "creatures", "users"
  add_foreign_key "examples", "users"
end
