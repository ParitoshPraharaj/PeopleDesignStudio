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

ActiveRecord::Schema.define(version: 20140413185200) do

  create_table "ideas", force: true do |t|
    t.integer  "People_Id"
    t.string   "Idea"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "knowledges", force: true do |t|
    t.integer  "Knowledge_Id"
    t.integer  "World_Id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", force: true do |t|
    t.integer  "world_id"
    t.text     "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.text     "name"
    t.text     "email"
    t.text     "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.integer  "work_id"
    t.string   "name"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "websites", force: true do |t|
    t.string "people_name"
    t.string "people_email"
    t.string "website_description"
    t.string "website_name"
  end

  create_table "works", force: true do |t|
    t.integer  "people_id"
    t.integer  "project_id"
    t.text     "work"
    t.boolean  "completed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "worlds", force: true do |t|
    t.text     "name"
    t.text     "email"
    t.text     "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
