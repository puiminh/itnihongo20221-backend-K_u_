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

ActiveRecord::Schema.define(version: 2023_02_12_143637) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_posts", force: :cascade do |t|
    t.integer "account_id"
    t.integer "post_id"
    t.integer "reaction"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "accounts", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "jti", null: false
    t.string "username", default: "", null: false
    t.string "name", default: ""
    t.integer "role", default: 0, null: false
    t.index ["email"], name: "index_accounts_on_email", unique: true
    t.index ["jti"], name: "index_accounts_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true
  end

  create_table "posts", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "term"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts_topics", id: false, force: :cascade do |t|
    t.bigint "post_id", null: false
    t.bigint "topic_id", null: false
  end

  create_table "references", force: :cascade do |t|
    t.string "link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_topics_on_name", unique: true
  end

end
