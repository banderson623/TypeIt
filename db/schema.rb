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

ActiveRecord::Schema.define(version: 20141221040124) do

  create_table "audios", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "url",        limit: 2083
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "audios", ["user_id"], name: "index_audios_on_user_id", using: :btree

  create_table "authors", force: :cascade do |t|
    t.integer  "document_id", limit: 4
    t.integer  "user_id",     limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "authors", ["document_id", "user_id"], name: "index_authors_on_document_id_and_user_id", unique: true, using: :btree

  create_table "documents", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "content",    limit: 65535
    t.integer  "audio_id",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "documents", ["audio_id"], name: "index_documents_on_audio_id", using: :btree
  add_index "documents", ["name"], name: "index_documents_on_name", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
