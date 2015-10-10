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

ActiveRecord::Schema.define(version: 20151009101940) do

  create_table "budget_services", force: :cascade do |t|
    t.decimal  "cost",                          precision: 8, scale: 2
    t.integer  "budget_id",           limit: 4
    t.integer  "service_category_id", limit: 4
    t.integer  "service_id",          limit: 4
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  create_table "budgets", force: :cascade do |t|
    t.integer  "wedding_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "service_categories", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "service_images", force: :cascade do |t|
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.integer  "service_id",         limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "service_reviews", force: :cascade do |t|
    t.integer  "rate",       limit: 4
    t.string   "title",      limit: 255
    t.string   "content",    limit: 255
    t.integer  "service_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.decimal  "price",                             precision: 20, scale: 2
    t.text     "description",         limit: 65535
    t.float    "rate_times",          limit: 24
    t.integer  "capacity",            limit: 4
    t.string   "location",            limit: 255
    t.string   "image_file_name",     limit: 255
    t.string   "image_content_type",  limit: 255
    t.integer  "image_file_size",     limit: 4
    t.datetime "image_updated_at"
    t.integer  "vendor_id",           limit: 4
    t.integer  "service_category_id", limit: 4
    t.datetime "created_at",                                                 null: false
    t.datetime "updated_at",                                                 null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",      limit: 255
    t.string   "last_name",       limit: 255
    t.string   "username",        limit: 255
    t.string   "salt",            limit: 255
    t.string   "hashed_password", limit: 255
    t.boolean  "is_admin",                    default: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "address",    limit: 255
    t.string   "phone",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "weddings", force: :cascade do |t|
    t.string   "groom_first_name", limit: 255
    t.string   "groom_last_name",  limit: 255
    t.string   "bride_first_name", limit: 255
    t.string   "bride_last_name",  limit: 255
    t.string   "location",         limit: 255
    t.date     "wedding_date"
    t.integer  "guests",           limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

end
