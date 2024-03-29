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

ActiveRecord::Schema.define(version: 2021_11_02_190856) do

  create_table "banks", force: :cascade do |t|
    t.string "name"
    t.string "acc_type"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "charges", force: :cascade do |t|
    t.string "uid", limit: 50
    t.integer "status", default: 0
    t.integer "payment_method", default: 0
    t.decimal "amount", default: "0.0"
    t.text "error_message"
    t.json "response_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "engineers", force: :cascade do |t|
    t.string "name"
    t.integer "rut"
    t.date "birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "engineers_banks", force: :cascade do |t|
    t.integer "engineer_id"
    t.integer "bank_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bank_id"], name: "index_engineers_banks_on_bank_id"
    t.index ["engineer_id"], name: "index_engineers_banks_on_engineer_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects_requests", force: :cascade do |t|
    t.integer "project_id"
    t.integer "request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_projects_requests_on_project_id"
    t.index ["request_id"], name: "index_projects_requests_on_request_id"
  end

  create_table "requests", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.date "d_day"
    t.string "city"
    t.integer "n_day"
    t.float "viatic"
    t.boolean "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests_engineers", force: :cascade do |t|
    t.integer "request_id"
    t.integer "engineer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engineer_id"], name: "index_requests_engineers_on_engineer_id"
    t.index ["request_id"], name: "index_requests_engineers_on_request_id"
  end

  create_table "technicians", force: :cascade do |t|
    t.string "name"
    t.integer "rut"
    t.date "birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
