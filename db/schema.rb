# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_23_092844) do

  create_table "articles", charset: "utf8", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dtb_categories", charset: "utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dtb_posts", charset: "utf8", force: :cascade do |t|
    t.string "title", null: false
    t.text "content", null: false
    t.boolean "status", default: false
    t.bigint "dtb_categories_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dtb_categories_id"], name: "index_dtb_posts_on_dtb_categories_id"
  end

  create_table "dtb_users", charset: "utf8", force: :cascade do |t|
    t.string "username", limit: 50, null: false
    t.string "password", limit: 50, null: false
    t.string "email", limit: 100, null: false
    t.string "display_name", limit: 50
    t.string "phone", limit: 50, null: false
    t.string "avatar", limit: 100
    t.boolean "status", default: false
    t.bigint "mtb_roles_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mtb_roles_id"], name: "index_dtb_users_on_mtb_roles_id"
  end

  create_table "mtb_district", charset: "utf8", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "mtb_pref_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mtb_pref_id"], name: "index_mtb_district_on_mtb_pref_id"
  end

  create_table "mtb_pref", charset: "utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mtb_roles", charset: "utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
