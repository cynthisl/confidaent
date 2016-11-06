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

ActiveRecord::Schema.define(version: 20161106165737) do

  create_table "connections", force: :cascade do |t|
    t.integer  "user_1"
    t.integer  "user_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meet_overs", force: :cascade do |t|
    t.boolean  "food"
    t.boolean  "drink"
    t.boolean  "coffee"
    t.integer  "meet_preference_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "meet_preferences", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "meet_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meet_times", force: :cascade do |t|
    t.integer  "meet_preference_id"
    t.boolean  "mon_morn"
    t.boolean  "mon_afternoon"
    t.boolean  "mon_evening"
    t.boolean  "tue_morn"
    t.boolean  "tue_afternoon"
    t.boolean  "tue_evening"
    t.boolean  "wed_morn"
    t.boolean  "wed_afternoon"
    t.boolean  "wed_evening"
    t.boolean  "thur_morn"
    t.boolean  "thur_afternoon"
    t.boolean  "thur_evening"
    t.boolean  "fri_morn"
    t.boolean  "fri_afternoon"
    t.boolean  "fri_evening"
    t.boolean  "sat_morn"
    t.boolean  "sat_afternoon"
    t.boolean  "sat_evening"
    t.boolean  "sun_morn"
    t.boolean  "sun_afternoon"
    t.boolean  "sun_evening"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "skill_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "strengths", force: :cascade do |t|
    t.integer  "skill_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "zip_code"
    t.datetime "birthdate"
    t.integer  "career_status"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "bio"
    t.string   "email"
    t.string   "password_digest"
  end

end
