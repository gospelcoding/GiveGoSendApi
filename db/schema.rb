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

ActiveRecord::Schema.define(version: 2018_05_29_152524) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "kids", force: :cascade do |t|
    t.string "name"
    t.bigint "missionary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["missionary_id"], name: "index_kids_on_missionary_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "missionary_id"
    t.bigint "person_id"
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["missionary_id"], name: "index_messages_on_missionary_id"
    t.index ["person_id"], name: "index_messages_on_person_id"
  end

  create_table "missionaries", force: :cascade do |t|
    t.string "subtitle"
    t.string "description"
    t.string "link"
    t.string "header_photo"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "organization_id"
    t.boolean "couple"
    t.integer "gender"
    t.string "name"
    t.string "husband_name"
    t.string "wife_name"
    t.index ["organization_id"], name: "index_missionaries_on_organization_id"
  end

  create_table "missionaries_people", force: :cascade do |t|
    t.bigint "missionary_id"
    t.bigint "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["missionary_id"], name: "index_missionaries_people_on_missionary_id"
    t.index ["person_id"], name: "index_missionaries_people_on_person_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.json "prefs", default: {}
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "missionary_id"
    t.index ["missionary_id"], name: "index_people_on_missionary_id"
  end

  create_table "people_prayer_requests", force: :cascade do |t|
    t.bigint "person_id"
    t.bigint "prayer_request_id"
    t.index ["person_id"], name: "index_people_prayer_requests_on_person_id"
    t.index ["prayer_request_id"], name: "index_people_prayer_requests_on_prayer_request_id"
  end

  create_table "photos", force: :cascade do |t|
    t.text "path"
    t.bigint "missionary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["missionary_id"], name: "index_photos_on_missionary_id"
  end

  create_table "photos_status_updates", force: :cascade do |t|
    t.bigint "photo_id"
    t.bigint "status_update_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_id"], name: "index_photos_status_updates_on_photo_id"
    t.index ["status_update_id"], name: "index_photos_status_updates_on_status_update_id"
  end

  create_table "prayer_requests", force: :cascade do |t|
    t.bigint "missionary_id"
    t.string "text"
    t.boolean "complete", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["missionary_id"], name: "index_prayer_requests_on_missionary_id"
  end

  create_table "status_updates", force: :cascade do |t|
    t.bigint "missionary_id"
    t.string "text"
    t.bigint "prayer_request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["missionary_id"], name: "index_status_updates_on_missionary_id"
    t.index ["prayer_request_id"], name: "index_status_updates_on_prayer_request_id"
  end

  add_foreign_key "kids", "missionaries"
  add_foreign_key "messages", "missionaries"
  add_foreign_key "messages", "people"
  add_foreign_key "photos", "missionaries"
  add_foreign_key "status_updates", "missionaries"
  add_foreign_key "status_updates", "prayer_requests"
end
