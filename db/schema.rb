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

ActiveRecord::Schema[7.1].define(version: 2024_01_15_040156) do
  create_table "courses", force: :cascade do |t|
    t.string "course_code"
    t.string "course_title"
    t.string "instructor"
    t.string "schedule"
    t.integer "credits"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "max_students"
    t.string "dept"
    t.integer "user_id"
    t.text "registrations"
  end

  create_table "faculties", force: :cascade do |t|
    t.string "name"
    t.string "email_id"
    t.string "dept"
    t.string "staff_id"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faculty_profiles", force: :cascade do |t|
    t.string "name"
    t.string "email_id"
    t.string "dept"
    t.string "staff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_faculty_profiles_on_user_id"
  end

  create_table "registrations", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_registrations_on_course_id"
    t.index ["student_id"], name: "index_registrations_on_student_id"
  end

  create_table "student_profiles", force: :cascade do |t|
    t.string "name"
    t.string "email_id"
    t.string "dept"
    t.string "program"
    t.string "roll_no"
    t.float "cgpa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_student_profiles_on_user_id"
  end

  create_table "student_registrations", force: :cascade do |t|
    t.string "course_code"
    t.string "student_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "email_id"
    t.string "dept"
    t.string "program"
    t.string "roll_no"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "cgpa"
    t.integer "user_id"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "faculty_profiles", "users"
  add_foreign_key "registrations", "courses"
  add_foreign_key "registrations", "students"
  add_foreign_key "student_profiles", "users"
  add_foreign_key "students", "users"
end
