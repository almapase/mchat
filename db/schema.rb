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

ActiveRecord::Schema.define(version: 20160717054148) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answer_groups", force: :cascade do |t|
    t.boolean  "option"
    t.integer  "answer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "question_id"
  end

  add_index "answer_groups", ["answer_id"], name: "index_answer_groups_on_answer_id", using: :btree
  add_index "answer_groups", ["question_id"], name: "index_answer_groups_on_question_id", using: :btree

  create_table "answers", force: :cascade do |t|
    t.date     "date"
    t.integer  "user_id"
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "answers", ["patient_id"], name: "index_answers_on_patient_id", using: :btree
  add_index "answers", ["user_id"], name: "index_answers_on_user_id", using: :btree

  create_table "mchat_tests", force: :cascade do |t|
    t.integer  "order"
    t.string   "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.integer  "rut"
    t.string   "dv"
    t.integer  "age"
    t.string   "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "order"
    t.string   "name"
    t.integer  "type_test_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "questions", ["type_test_id"], name: "index_questions_on_type_test_id", using: :btree

  create_table "type_tests", force: :cascade do |t|
    t.string   "name"
    t.text     "instruction"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "title"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "answer_groups", "answers"
  add_foreign_key "answer_groups", "questions"
  add_foreign_key "answers", "patients"
  add_foreign_key "answers", "users"
  add_foreign_key "questions", "type_tests"
end
