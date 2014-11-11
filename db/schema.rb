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

ActiveRecord::Schema.define(version: 20141111124406) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercises", force: true do |t|
    t.string "name",        null: false
    t.text   "description", null: false
  end

  add_index "exercises", ["name"], name: "index_exercises_on_name", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",       null: false
    t.string   "encrypted_password",     default: "",       null: false
    t.string   "username"
    t.string   "first_name",                                null: false
    t.string   "last_name",                                 null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,        null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "role",                   default: "member"
    t.string   "api_key"
  end

  add_index "users", ["api_key"], name: "index_users_on_api_key", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "workout_exercises", force: true do |t|
    t.integer "workout_id",      null: false
    t.integer "exercise_id",     null: false
    t.integer "exercise_number", null: false
    t.integer "duration_in_min"
  end

  add_index "workout_exercises", ["workout_id", "exercise_number"], name: "index_workout_exercises_on_workout_id_and_exercise_number", unique: true, using: :btree

  create_table "workouts", force: true do |t|
    t.string "name",        null: false
    t.text   "description"
  end

  add_index "workouts", ["name"], name: "index_workouts_on_name", unique: true, using: :btree

end
