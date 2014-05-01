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

ActiveRecord::Schema.define(version: 20140501004924) do

  create_table "blogs", force: true do |t|
    t.text     "title"
    t.text     "content"
    t.text     "files"
    t.integer  "people_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "slug"
  end

  add_index "blogs", ["slug"], name: "index_blogs_on_slug"

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

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

  create_table "marketings", force: true do |t|
    t.text     "Name"
    t.text     "Business_Name"
    t.text     "Email"
    t.text     "Phone_Number"
    t.text     "Address"
    t.text     "url"
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

  create_table "person", force: true do |t|
    t.text     "name"
    t.text     "email"
    t.text     "password"
    t.text     "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reach_out_to_customers", force: true do |t|
    t.text     "to"
    t.text     "email"
    t.text     "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "subject"
  end

  create_table "table_people", force: true do |t|
  end

  create_table "tasks", force: true do |t|
    t.integer  "work_id"
    t.string   "name"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "thank_you_email_messages", force: true do |t|
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "thank_you_email_messages", ["message"], name: "index_thank_you_email_messages_on_message"

  create_table "users", force: true do |t|
    t.text     "name"
    t.text     "email"
    t.text     "password_digest"
    t.text     "introduction"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "websites", force: true do |t|
    t.string "people_name"
    t.string "people_email"
    t.string "website_description"
    t.string "website_name"
  end

  create_table "whats_happening_around_the_worlds", force: true do |t|
    t.text     "title"
    t.text     "description"
    t.text     "image"
    t.datetime "created_at"
    t.datetime "updated_at"
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
