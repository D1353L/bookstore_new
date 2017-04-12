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

ActiveRecord::Schema.define(version: 20170412160017) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "city"
    t.string   "street_address"
    t.string   "country"
    t.string   "zip"
    t.string   "phone"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "first_name"
    t.string   "last_name"
  end

  create_table "authors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "authors_books", force: :cascade do |t|
    t.integer "author_id"
    t.integer "book_id"
    t.index ["author_id"], name: "index_authors_books_on_author_id", using: :btree
    t.index ["book_id"], name: "index_authors_books_on_book_id", using: :btree
  end

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "short_description"
    t.text     "full_description"
    t.string   "image"
    t.decimal  "price",             precision: 8, scale: 2
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "books_categories", force: :cascade do |t|
    t.integer "book_id"
    t.integer "category_id"
    t.index ["book_id"], name: "index_books_categories_on_book_id", using: :btree
    t.index ["category_id"], name: "index_books_categories_on_category_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coupons", force: :cascade do |t|
    t.string   "code"
    t.decimal  "discount",   precision: 8, scale: 2
    t.boolean  "active"
    t.integer  "quantity"
    t.date     "expiration"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "credit_cards", force: :cascade do |t|
    t.string   "number"
    t.date     "expiration"
    t.string   "code"
    t.integer  "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_credit_cards_on_profile_id", using: :btree
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "quantity"
    t.decimal  "unit_price", precision: 8, scale: 2
    t.integer  "book_id"
    t.integer  "order_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["book_id"], name: "index_order_items_on_book_id", using: :btree
    t.index ["order_id"], name: "index_order_items_on_order_id", using: :btree
  end

  create_table "order_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.decimal  "subtotal_price",      precision: 8, scale: 2
    t.decimal  "total_price",         precision: 8, scale: 2
    t.decimal  "shipping_price",      precision: 8, scale: 2
    t.integer  "order_status_id"
    t.integer  "user_id"
    t.integer  "coupon_id"
    t.integer  "billing_address_id"
    t.integer  "shipping_address_id"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.index ["billing_address_id"], name: "index_orders_on_billing_address_id", using: :btree
    t.index ["coupon_id"], name: "index_orders_on_coupon_id", using: :btree
    t.index ["order_status_id"], name: "index_orders_on_order_status_id", using: :btree
    t.index ["shipping_address_id"], name: "index_orders_on_shipping_address_id", using: :btree
    t.index ["user_id"], name: "index_orders_on_user_id", using: :btree
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "billing_address_id"
    t.integer  "shipping_address_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["billing_address_id"], name: "index_profiles_on_billing_address_id", using: :btree
    t.index ["shipping_address_id"], name: "index_profiles_on_shipping_address_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "text"
    t.integer  "rating"
    t.boolean  "approved"
    t.integer  "book_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_reviews_on_book_id", using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.integer  "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_users_on_profile_id", using: :btree
  end

  add_foreign_key "authors_books", "authors"
  add_foreign_key "authors_books", "books"
  add_foreign_key "books_categories", "books"
  add_foreign_key "books_categories", "categories"
  add_foreign_key "credit_cards", "profiles"
  add_foreign_key "order_items", "books"
  add_foreign_key "order_items", "orders"
  add_foreign_key "orders", "addresses", column: "billing_address_id"
  add_foreign_key "orders", "addresses", column: "shipping_address_id"
  add_foreign_key "orders", "coupons"
  add_foreign_key "orders", "order_statuses"
  add_foreign_key "orders", "users"
  add_foreign_key "profiles", "addresses", column: "billing_address_id"
  add_foreign_key "profiles", "addresses", column: "shipping_address_id"
  add_foreign_key "reviews", "books"
  add_foreign_key "reviews", "users"
  add_foreign_key "users", "profiles"
end
