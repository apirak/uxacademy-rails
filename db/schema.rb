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

ActiveRecord::Schema.define(version: 20170531171034) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "alumnis", force: :cascade do |t|
    t.string   "name"
    t.string   "position"
    t.string   "company"
    t.string   "company_url"
    t.string   "photo"
    t.string   "feedback"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.datetime "start_date"
    t.decimal  "period"
    t.decimal  "max_price"
    t.decimal  "low_price"
    t.string   "url"
    t.string   "url_gallery"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.decimal  "max_early_bird"
    t.decimal  "max_general"
    t.decimal  "max_last_ticket"
    t.decimal  "price_early_bird"
    t.decimal  "price_regular"
    t.decimal  "price_last_ticket"
    t.datetime "end_date"
    t.text     "description"
    t.text     "course_description"
    t.text     "course_gallery"
    t.text     "course_description_2"
    t.string   "category"
  end

  create_table "orders", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "condition"
    t.boolean  "wht",                 default: false
    t.string   "company_name"
    t.text     "company_address"
    t.string   "company_tax_id"
    t.decimal  "ticket_early_bird",   default: "0.0"
    t.decimal  "ticket_regular",      default: "0.0"
    t.decimal  "ticket_last_ticket",  default: "0.0"
    t.string   "payment_status"
    t.string   "payment_id"
    t.string   "payment_total"
    t.string   "payment_method"
    t.string   "payment_description"
    t.datetime "payment_date"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "event_id"
  end

end
