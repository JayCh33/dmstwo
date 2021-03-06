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

ActiveRecord::Schema.define(version: 20190502114533) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "superadmin"
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "city"
    t.string "address"
    t.string "postal_code"
    t.string "email"
    t.string "phone"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "city"
    t.string "address"
    t.string "postal_code"
    t.string "email"
    t.string "phone"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer "product_id"
    t.integer "order_id"
    t.integer "quantity"
    t.integer "cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "price"
    t.index ["cart_id"], name: "index_line_items_on_cart_id"
    t.index ["order_id"], name: "index_line_items_on_order_id"
    t.index ["product_id"], name: "index_line_items_on_product_id"
  end

  create_table "line_products", force: :cascade do |t|
    t.integer "product_id"
    t.integer "purchase_order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.string "name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "email"
    t.integer "pay_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.datetime "date_configuration"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "parts", force: :cascade do |t|
    t.string "part_name"
    t.string "part_number"
    t.string "image"
    t.string "part_category"
    t.text "part_description"
    t.decimal "part_purchase_price", precision: 8, scale: 2
    t.decimal "part_customer_price", precision: 8, scale: 2
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.text "description"
    t.string "category"
    t.decimal "price", precision: 8, scale: 2
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchase_orders", force: :cascade do |t|
    t.integer "supplier_id"
    t.text "order_details"
    t.date "eta"
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_purchase_orders_on_supplier_id"
  end

  create_table "service_appointments", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.text "appointment_details"
    t.integer "customer_id"
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_service_appointments_on_customer_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "city"
    t.string "address"
    t.string "postal_code"
    t.string "email"
    t.string "phone"
    t.string "company"
    t.text "company_details"
    t.text "bank_details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "vehicle_make"
    t.string "vehicle_category"
    t.string "vehicle_model"
    t.string "vehicle_condition"
    t.date "vehicle_registration_date"
    t.string "vehicle_engine"
    t.string "vehicle_power"
    t.string "vehicle_drive_type"
    t.string "vehicle_fuel_type"
    t.string "vehicle_doors"
    t.string "vehicle_color"
    t.string "vehicle_interior_type"
    t.string "vehicle_airbags"
    t.string "vehicle_euroclass"
    t.decimal "vehicle_price"
    t.text "vehicle_life_cycle"
    t.string "image"
    t.string "vehicle_type"
    t.string "vehicle_identification_number"
    t.string "vehicle_registration_plate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id"
    t.index ["customer_id"], name: "index_vehicles_on_customer_id"
  end

end
