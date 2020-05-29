# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_28_211928) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "body"
    t.bigint "user_id", null: false
    t.bigint "meme_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meme_id"], name: "index_comments_on_meme_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "memes", force: :cascade do |t|
    t.string "title"
    t.string "type"
    t.string "url_source"
    t.integer "votes_count", default: 0
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "owner_id", null: false
    t.integer "comments_count", default: 0
    t.index ["category_id"], name: "index_memes_on_category_id"
    t.index ["owner_id"], name: "index_memes_on_owner_id"
  end

  create_table "memes_tags", id: false, force: :cascade do |t|
    t.bigint "meme_id", null: false
    t.bigint "tag_id", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.integer "memes_count", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "votes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "meme_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meme_id"], name: "index_votes_on_meme_id"
    t.index ["user_id"], name: "index_votes_on_user_id"
  end

  add_foreign_key "comments", "memes"
  add_foreign_key "comments", "users"
  add_foreign_key "memes", "categories"
  add_foreign_key "memes", "users", column: "owner_id"
  add_foreign_key "votes", "memes"
  add_foreign_key "votes", "users"
end
