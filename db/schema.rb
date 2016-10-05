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

ActiveRecord::Schema.define(version: 20160825193435) do

  create_table "classrooms", force: :cascade do |t|
    t.string   "name",         null: false
    t.string   "schoolyear",   null: false
    t.string   "docdrive_url"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "classrooms_teachers", force: :cascade do |t|
    t.integer "teacher_id"
    t.integer "classroom_id"
  end

  create_table "components", force: :cascade do |t|
    t.string   "name",                       null: false
    t.integer  "subject_id",                 null: false
    t.integer  "student_id",                 null: false
    t.boolean  "checked",    default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string   "text",         null: false
    t.string   "photo_path"
    t.integer  "messager_id",  null: false
    t.integer  "classroom_id", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string   "text",       null: false
    t.integer  "student_id", null: false
    t.integer  "noter_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "special_needs", force: :cascade do |t|
    t.text     "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "special_needs_students", force: :cascade do |t|
    t.integer "special_needs_id"
    t.integer "student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name",   null: false
    t.string   "last_name",    null: false
    t.date     "birthday"
    t.integer  "classroom_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "first_name",      null: false
    t.string   "last_name",       null: false
    t.string   "username",        null: false
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.string   "photo_path"
    t.string   "phone_number",    null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
