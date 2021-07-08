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

ActiveRecord::Schema.define(version: 2021_07_08_134103) do

  create_table "enrollments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "user_class_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_class_id"], name: "index_enrollments_on_user_class_id"
    t.index ["user_id", "user_class_id"], name: "index_enrollments_on_user_id_and_user_class_id", unique: true
    t.index ["user_id"], name: "index_enrollments_on_user_id"
  end

  create_table "user_classes", force: :cascade do |t|
    t.string "name", null: false
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.integer "timezone", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_user_classes_on_name"
    t.index ["start_date", "end_date", "timezone"], name: "index_user_classes_on_start_date_and_end_date_and_timezone"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["last_name", "first_name"], name: "index_users_on_last_name_and_first_name"
  end

end
