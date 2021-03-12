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

ActiveRecord::Schema.define(version: 2021_03_12_194738) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "archives", force: :cascade do |t|
    t.text "title"
    t.text "details"
    t.string "link"
    t.string "image"
    t.string "video"
    t.integer "order"
    t.string "timestamps"
    t.string "category"
    t.index ["id"], name: "index_archives_on_id"
    t.index ["title"], name: "index_archives_on_title"
  end

  create_table "articles", force: :cascade do |t|
    t.string "publication"
    t.string "title"
    t.text "details"
    t.string "link1"
    t.string "link2"
    t.string "image"
    t.string "alt"
    t.string "timestamps"
    t.integer "order"
    t.boolean "display"
    t.string "link"
    t.index ["id"], name: "index_articles_on_id"
    t.index ["title"], name: "index_articles_on_title"
  end

  create_table "events", force: :cascade do |t|
    t.string "event_type"
    t.string "title"
    t.string "date"
    t.string "time"
    t.string "location"
    t.string "description"
    t.string "price"
    t.string "link"
    t.string "image"
    t.string "extras"
    t.string "honey"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["date"], name: "index_events_on_date"
    t.index ["event_type"], name: "index_events_on_event_type"
    t.index ["title"], name: "index_events_on_title"
  end

  create_table "features", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "organization"
    t.string "link"
    t.string "deadline"
    t.string "feat_type"
    t.string "details"
    t.string "honey"
    t.string "timestamps"
  end

  create_table "requests", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "comments"
    t.string "event_name"
    t.string "event_date"
    t.string "event_location"
    t.string "event_link"
    t.string "event_message"
    t.string "event_type"
    t.string "honoriam"
    t.string "honey"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "org_name"
    t.string "event_time"
    t.string "audience"
    t.string "aud_size"
    t.index ["event_name"], name: "index_requests_on_event_name"
    t.index ["name"], name: "index_requests_on_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
