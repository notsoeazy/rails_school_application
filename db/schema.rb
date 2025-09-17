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

ActiveRecord::Schema[8.0].define(version: 2025_09_17_105631) do
  create_table "classlists", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "section_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_classlists_on_section_id"
    t.index ["student_id"], name: "index_classlists_on_student_id"
  end

  create_table "departments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "room"
    t.string "time_slot"
    t.bigint "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number_of_students", default: 0
    t.index ["subject_id"], name: "index_sections_on_subject_id"
  end

  create_table "students", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "year_level"
    t.string "program"
    t.bigint "department_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number_of_units", default: 0
    t.integer "total_assessment", default: 0
    t.index ["department_id"], name: "index_students_on_department_id"
  end

  create_table "subjects", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.bigint "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number_of_units", default: 0
    t.index ["teacher_id"], name: "index_subjects_on_teacher_id"
  end

  create_table "teachers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "specialization"
    t.string "status"
    t.bigint "department_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number_of_units", default: 0
    t.integer "monthly_salary", default: 0
    t.index ["department_id"], name: "index_teachers_on_department_id"
  end

  add_foreign_key "classlists", "sections"
  add_foreign_key "classlists", "students"
  add_foreign_key "sections", "subjects"
  add_foreign_key "students", "departments"
  add_foreign_key "subjects", "teachers"
  add_foreign_key "teachers", "departments"
end
