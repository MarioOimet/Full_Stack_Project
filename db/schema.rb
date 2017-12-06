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

ActiveRecord::Schema.define(version: 20171206035421) do

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
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "businesses", force: :cascade do |t|
    t.string "name_business"
    t.string "first_name_owner"
    t.string "last_name_owner"
    t.string "middle_name_owner"
    t.string "address_business"
    t.string "city_business"
    t.string "postal_code_business"
    t.string "phone_number_business"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.integer "Province_id"
    t.index ["Province_id"], name: "index_businesses_on_Province_id"
    t.index ["email"], name: "index_businesses_on_email", unique: true
    t.index ["reset_password_token"], name: "index_businesses_on_reset_password_token", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "description_category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.decimal "service_fee"
  end

  create_table "contracts", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Student_id"
    t.integer "Rating_id"
    t.index ["Rating_id"], name: "index_contracts_on_Rating_id"
    t.index ["Student_id"], name: "index_contracts_on_Student_id"
  end

  create_table "enquiries", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Business_id"
    t.integer "Category_id"
    t.index ["Business_id"], name: "index_enquiries_on_Business_id"
    t.index ["Category_id"], name: "index_enquiries_on_Category_id"
  end

  create_table "finances", force: :cascade do |t|
    t.string "finance_rating"
    t.string "cra_submission"
    t.date "date_cra_submitted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Business_id"
    t.index ["Business_id"], name: "index_finances_on_Business_id"
  end

  create_table "infos", force: :cascade do |t|
    t.string "about"
    t.string "title"
    t.string "phone_number_info"
    t.string "address"
    t.string "city"
    t.string "province"
    t.string "postal_code_info"
    t.string "email_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Contract_id"
    t.integer "Enquiry_id"
    t.index ["Contract_id"], name: "index_line_items_on_Contract_id"
    t.index ["Enquiry_id"], name: "index_line_items_on_Enquiry_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.decimal "gst"
    t.decimal "pst"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.string "descrtiption_rating"
    t.integer "stars"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name_student"
    t.string "last_name_student"
    t.string "middle_name_student"
    t.string "city_student"
    t.string "province_student"
    t.string "phone_number_student"
    t.string "e_mail_student"
    t.string "pass_phrase"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Category_id"
    t.index ["Category_id"], name: "index_students_on_Category_id"
  end

end
