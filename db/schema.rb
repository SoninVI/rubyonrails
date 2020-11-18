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

ActiveRecord::Schema.define(version: 20201117143545) do

  create_table "additional_photos", force: :cascade do |t|
    t.string   "image",      limit: 255
    t.string   "alt",        limit: 255
    t.integer  "article_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "additional_photos", ["article_id"], name: "index_additional_photos_on_article_id", using: :btree

  create_table "articles", force: :cascade do |t|
    t.text     "name",       limit: 65535
    t.text     "url",        limit: 65535
    t.text     "text",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "categories", force: :cascade do |t|
    t.text     "name",       limit: 65535
    t.text     "url",        limit: 65535
    t.text     "title",      limit: 65535
    t.text     "keywords",   limit: 65535
    t.text     "disc",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "name",       limit: 65535
    t.text     "email",      limit: 65535
    t.text     "text",       limit: 65535
    t.integer  "article_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "news", force: :cascade do |t|
    t.text     "name",       limit: 65535
    t.text     "url",        limit: 65535
    t.text     "content",    limit: 65535
    t.text     "title",      limit: 65535
    t.text     "keywords",   limit: 65535
    t.text     "disc",       limit: 65535
    t.boolean  "active"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "news_news_tags", id: false, force: :cascade do |t|
    t.integer "news_id",     limit: 4, null: false
    t.integer "news_tag_id", limit: 4, null: false
  end

  add_index "news_news_tags", ["news_id", "news_tag_id"], name: "index_news_news_tags_on_news_id_and_news_tag_id", using: :btree
  add_index "news_news_tags", ["news_tag_id", "news_id"], name: "index_news_news_tags_on_news_tag_id_and_news_id", using: :btree

  create_table "news_tags", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "url",        limit: 255
    t.text     "content",    limit: 65535
    t.string   "title",      limit: 255
    t.text     "keywords",   limit: 65535
    t.text     "disc",       limit: 65535
    t.text     "text",       limit: 65535
    t.boolean  "active"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "pages_tags", id: false, force: :cascade do |t|
    t.integer "page_id", limit: 4, null: false
    t.integer "tag_id",  limit: 4, null: false
  end

  add_index "pages_tags", ["page_id", "tag_id"], name: "index_pages_tags_on_page_id_and_tag_id", using: :btree
  add_index "pages_tags", ["tag_id", "page_id"], name: "index_pages_tags_on_tag_id_and_page_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.text     "name",       limit: 65535
    t.integer  "article_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_foreign_key "additional_photos", "articles"
end
