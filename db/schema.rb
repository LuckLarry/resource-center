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

ActiveRecord::Schema.define(version: 20161114073948) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "baby_managements", force: :cascade do |t|
    t.string   "sku"
    t.string   "tag"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "baby_no"
  end

  create_table "base_units", force: :cascade do |t|
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "business_units", force: :cascade do |t|
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "english_name"
  end

  create_table "currencies", force: :cascade do |t|
    t.integer  "position"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "md5"
    t.integer  "file_size"
    t.string   "filename"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "price_managements", force: :cascade do |t|
    t.string   "level"
    t.string   "platform"
    t.integer  "product_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.decimal  "nomember_price"
    t.decimal  "member_price"
    t.integer  "warehouse_id"
    t.integer  "price_unit_id"
    t.integer  "currency_id"
  end

  create_table "price_units", force: :cascade do |t|
    t.integer  "position"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_category_base_units", force: :cascade do |t|
    t.integer  "product_category_id"
    t.integer  "position"
    t.integer  "base_unit_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "product_category_colors", force: :cascade do |t|
    t.integer  "product_category_id"
    t.integer  "color_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "product_category_materials", force: :cascade do |t|
    t.integer  "material_id"
    t.integer  "product_category_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "position"
  end

  create_table "product_category_shapes", force: :cascade do |t|
    t.integer  "product_category_id"
    t.integer  "position"
    t.integer  "shape_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "product_category_surface_crafts", force: :cascade do |t|
    t.integer  "product_category_id"
    t.integer  "position"
    t.integer  "surface_craft_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "product_fields", force: :cascade do |t|
    t.string   "tabtype"
    t.string   "field"
    t.string   "title"
    t.string   "datetype"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_image_categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_images", force: :cascade do |t|
    t.integer  "position"
    t.integer  "image_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "product_image_category_id"
    t.integer  "sku_id"
    t.integer  "product_id"
  end

  create_table "product_managements", force: :cascade do |t|
    t.string   "sku"
    t.string   "tag"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "product_category_id"
    t.string   "product_no"
    t.string   "name"
    t.text     "description"
    t.string   "spec"
    t.string   "brand"
    t.integer  "water_absrp_rate_id"
    t.decimal  "thickness"
    t.integer  "shape_id"
    t.integer  "color_id"
    t.integer  "cases_per_pallet"
    t.decimal  "unit_weight"
    t.decimal  "unit_area"
    t.decimal  "package_weight"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "surface_craft_id"
    t.integer  "base_unit_id"
    t.integer  "business_unit_id"
    t.integer  "material_id"
    t.integer  "packing_unit"
    t.integer  "rim_category_id"
    t.integer  "root_product_category_id"
  end

  create_table "rim_categories", force: :cascade do |t|
    t.integer  "position"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "searches", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shapes", force: :cascade do |t|
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "site_skus", force: :cascade do |t|
    t.integer  "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "product_id"
    t.boolean  "selected"
    t.integer  "sku_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skus", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "level"
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.decimal  "face_price"
    t.integer  "price_unit_id"
    t.integer  "currency_id"
  end

  create_table "surface_crafts", force: :cascade do |t|
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "employee_number"
    t.string   "name"
    t.string   "mobile"
    t.string   "password_digest"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "admin",           default: false
  end

  create_table "warehouses", force: :cascade do |t|
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "water_absrp_rates", force: :cascade do |t|
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
