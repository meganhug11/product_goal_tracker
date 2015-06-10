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

ActiveRecord::Schema.define(version: 20150606025411) do

  create_table "competencies", force: :cascade do |t|
    t.string   "comp_name"
    t.text     "comp_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "competency_notes", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "competency_id"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "employee_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "employees", ["email"], name: "index_employees_on_email", unique: true
  add_index "employees", ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true

  create_table "goal_notes", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "goal_id"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goals", force: :cascade do |t|
    t.integer  "employee_id"
    t.text     "goal_description"
    t.string   "goal_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meeting_notes", force: :cascade do |t|
    t.integer  "employee_id"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
