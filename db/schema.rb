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

ActiveRecord::Schema.define(version: 20190617185308) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversations", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "receiver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "acronym"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "external_event_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "external_event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "external_events", force: :cascade do |t|
    t.date "start"
    t.date "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "study_room_id"
    t.string "name"
    t.index ["study_room_id"], name: "index_external_events_on_study_room_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.bigint "conversation_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "notes", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.text "description"
    t.float "reputation_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "course_id"
    t.string "file"
  end

  create_table "offer_tutorial_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "offer_tutorial_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offer_tutorials", force: :cascade do |t|
    t.integer "duration"
    t.integer "price"
    t.date "start"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "study_room_id"
    t.string "acronym"
    t.string "teacher"
    t.index ["study_room_id"], name: "index_offer_tutorials_on_study_room_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "room_evaluations", force: :cascade do |t|
    t.integer "study_room_id"
    t.integer "user_id"
    t.text "comment"
    t.integer "available_score"
    t.integer "plug_score"
    t.integer "noise_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "search_tutorial_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "search_tutorial_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "search_tutorials", force: :cascade do |t|
    t.integer "duration"
    t.string "course"
    t.date "start"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "study_room_id"
    t.index ["study_room_id"], name: "index_search_tutorials_on_study_room_id"
  end

  create_table "study_group_users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "study_group_id"
  end

  create_table "study_groups", force: :cascade do |t|
    t.string "name"
    t.string "acronym"
    t.datetime "start"
    t.datetime "finish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "study_room_id"
    t.index ["study_room_id"], name: "index_study_groups_on_study_room_id"
  end

  create_table "study_rooms", force: :cascade do |t|
    t.string "name"
    t.float "available_score"
    t.float "noise_score"
    t.float "plug_score"
    t.integer "capacity"
    t.boolean "availability", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "uname"
    t.integer "uid"
    t.string "img_path"
    t.string "user_type"
    t.string "degree"
    t.string "generation_degree"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "study_group_id"
    t.string "picture"
    t.integer "external_event_id"
    t.integer "offer_tutorial_id"
    t.integer "search_tutorial_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["study_group_id"], name: "index_users_on_study_group_id"
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "external_events", "study_rooms"
  add_foreign_key "offer_tutorials", "study_rooms"
  add_foreign_key "search_tutorials", "study_rooms"
  add_foreign_key "study_groups", "study_rooms"
  add_foreign_key "users", "study_groups"
end
