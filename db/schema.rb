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

ActiveRecord::Schema.define(version: 20170114014200) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", primary_key: "account_id", id: :integer, default: -> { "nextval('account_id_seq'::regclass)" }, force: :cascade, comment: "Tài khoản người dùng" do |t|
    t.string   "email",        limit: 255,                          null: false
    t.string   "password"
    t.integer  "role_id",                                           null: false
    t.datetime "created_date",             default: -> { "now()" }, null: false
    t.datetime "updated_date",             default: -> { "now()" }, null: false
    t.boolean  "status",                   default: true,           null: false, comment: "true: active\nfalse: block"
    t.string   "provider",                                          null: false
    t.string   "uid",          limit: 255
    t.string   "token",        limit: 255
    t.string   "name",         limit: 255
    t.string   "image_url",    limit: 255
  end

  create_table "categories", primary_key: "category_id", id: :integer, default: -> { "nextval('category_id_seq'::regclass)" }, force: :cascade, comment: "Phân loại món ăn" do |t|
    t.string  "name",       limit: 150, null: false
    t.integer "parent_id",              null: false
    t.integer "sort_order",             null: false
    t.index ["name"], name: "category_unq", unique: true, using: :btree
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type", using: :btree
  end

  create_table "foods", primary_key: "food_id", id: :integer, default: -> { "nextval('food_id_seq'::regclass)" }, force: :cascade, comment: "Món ăn" do |t|
    t.string   "name",          limit: 250,                          null: false
    t.decimal  "price",                                              null: false
    t.text     "summary"
    t.text     "feature"
    t.text     "detail"
    t.decimal  "promote_price"
    t.integer  "stock_qty",                 default: 1,              null: false
    t.integer  "category_id",                                        null: false
    t.datetime "created_date",              default: -> { "now()" }, null: false
    t.datetime "updated_date",              default: -> { "now()" }
    t.string   "image_url_1",   limit: 250
    t.string   "image_url_2",   limit: 250
    t.string   "image_url_3",   limit: 250
    t.boolean  "status",                                             null: false
    t.integer  "user_id",                                            null: false
    t.string   "url",           limit: 250
  end

  create_table "invoices", primary_key: "invoice_id", id: :integer, default: -> { "nextval('invoice_id_seq'::regclass)" }, force: :cascade, comment: "Hóa đơn thanh toán" do |t|
    t.integer "transaction_id",                                         null: false
    t.integer "food_id",                                                null: false
    t.integer "quantity",                                               null: false
    t.decimal "amount",         precision: 20,                          null: false
    t.boolean "status",                                                 null: false, comment: "true: đơn hàng đã gửi đến khách hàng\nfalse: đơn hàng chưa được gửi đến khách hàng"
    t.integer "user_id",                                                null: false
    t.date    "created_date",                  default: -> { "now()" }, null: false
  end

  create_table "roles", primary_key: "role_id", id: :integer, default: -> { "nextval('role_id_seq'::regclass)" }, force: :cascade, comment: "Quyền truy cập của tài khoản" do |t|
    t.string "name",        null: false
    t.text   "description"
    t.index ["name"], name: "roles_unq", unique: true, using: :btree
  end

  create_table "sliders", primary_key: "slider_id", id: :integer, default: -> { "nextval('slider_id_seq'::regclass)" }, force: :cascade, comment: "Slider trang chủ" do |t|
    t.string   "image_url",    limit: 255,                          null: false
    t.text     "content"
    t.integer  "order"
    t.datetime "created_date",             default: -> { "now()" }, null: false
    t.datetime "updated_date",             default: -> { "now()" }, null: false
  end

  create_table "transactions", primary_key: "transaction_id", id: :integer, default: -> { "nextval('transaction_id_seq'::regclass)" }, force: :cascade, comment: "Thông tin phiên giao dịch" do |t|
    t.string   "customer_name",    limit: 150,                                         null: false
    t.string   "customer_email",   limit: 255,                                         null: false
    t.string   "customer_phone",   limit: 20,                                          null: false
    t.string   "customer_address", limit: 255,                                         null: false
    t.decimal  "amount",                       precision: 20,                          null: false
    t.datetime "created_date",                                default: -> { "now()" }, null: false
    t.boolean  "status",                                                               null: false
    t.string   "payment_method",   limit: 50,                                          null: false
    t.integer  "quantity",                                                             null: false
    t.string   "customer_city",    limit: 150,                                         null: false
  end

  create_table "users", primary_key: "user_id", id: :integer, default: -> { "nextval('user_id_seq'::regclass)" }, force: :cascade, comment: "Thông tin chi tiết của người dùng" do |t|
    t.string   "fullname",                                           null: false
    t.boolean  "gender"
    t.date     "date_of_birth"
    t.string   "address",       limit: 255
    t.string   "city",          limit: 100
    t.string   "phone_number",  limit: 20
    t.datetime "updated_date",              default: -> { "now()" }
    t.string   "email",         limit: 255,                          null: false
    t.index ["email"], name: "users_unq", unique: true, using: :btree
  end

  add_foreign_key "accounts", "roles", primary_key: "role_id", name: "accounts_roles_fkey"
  add_foreign_key "accounts", "users", column: "email", primary_key: "email", name: "accounts_users_fkey"
  add_foreign_key "foods", "categories", primary_key: "category_id", name: "food_categories_fkey"
  add_foreign_key "foods", "users", primary_key: "user_id", name: "food_users_fkey"
  add_foreign_key "invoices", "foods", primary_key: "food_id", name: "invoices_food_fkey"
  add_foreign_key "invoices", "transactions", primary_key: "transaction_id", name: "invoices_transactions_fkey"
  add_foreign_key "invoices", "users", primary_key: "user_id", name: "invoices_users_fkey"
end
